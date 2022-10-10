import 'dart:convert';
import 'dart:math';
import 'package:bengal_app/controller/game_launcher.dart';
import 'package:flinq/flinq.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../common/observer.dart';
import '../models/account.dart';
import '../models/box.dart';
import '../models/car.dart';
import '../models/common_data.dart';
import '../models/game.dart';
import '../models/transfer.dart';
import '../models/wallet.dart';
import '../types/common.dart';
import '../types/constants.dart';

enum StorageKey {
  baseId,
  isRemember,
  rememberEmail,
  account,
  wallet,
  onChainWallet,
  carNft,
  boxNft,
  miningBox,
  miningResult,
  transferHistory,
  gameList,
  gameDemandList,
  carNftPool,
  boxNftPool,
  boxCarNftPool,
}

class StorageController implements Subject {
  static final StorageController _instance = StorageController._internal();

  factory StorageController() {
    return _instance;
  }

  StorageController._internal() {
    _loadStorage();
  }

  late SharedPreferences _prefs;

  final double _fee = 1.0;
  late int _baseId = 1;
  late List<Observer> _observers = [];

  late bool isRemember = false;
  late String rememberEmail = '';
  late bool isCertified = false;

  late Account? account;
  late Wallet? wallet;
  late OnChainWallet? onChainWallet;
  late CarNftList? carNftList;
  late BoxNftList? boxNftList;
  late MiningBoxList? miningBoxList;
  late MiningResultList? miningResultList;
  late TransferHistoryList? transferHistory;
  late GameInfoList? gameMyDemandList;

  late CommonData commonData;
  late GameInfoList gameSpecialList;
  late GameInfoList gameRecommendList;
  late GameInfoList gameDemandList;
  late CarNftList carNftPool;
  late BoxNftList boxNftPool;
  late CarNftList boxCarNftPool;

  late int selectedCarIndex = 0;
  void setSelectCarToIndex(int index) {
    selectedCarIndex = index;
  }
  CarNft? getLobbySelectedCar() {
    if (null == carNftList) return null;
    if (carNftList!.list.length <= selectedCarIndex) return null;
    return carNftList!.list[selectedCarIndex];
  }

  int selectedCarDurabilityPercent() {
    var car = getLobbySelectedCar();
    if (null == car) return 0;
    return ((car.durability / commonData.initialInfo.carMaxDurability) * 100).round();
  }

  String _genAutoKey(StorageKey key) =>
      "${account!.email}_${describeEnum(key)}";

  String _genKey(StorageKey key, String email) =>
      "${email}_${describeEnum(key)}";

  Future<void> _loadStorage() async {
    _prefs = await SharedPreferences.getInstance();

    var baseId = _prefs.getInt(describeEnum(StorageKey.baseId));
    if (null != baseId) {
      _baseId = baseId;
    }

    loadRemember();
    await loadCommonData();
    await loadGameSpecialList();
    await loadGameRecommendList();
    await loadGameDemandList();
    await loadCarNftPool();
    await loadBoxNftPool();
    await loadBoxCarNftPool();
  }

  @override
  notifyObserver() {
    _observers.map((observer) {
      observer.updateObserver();
    }).toList();
  }

  @override
  registerObserver(Observer o) {
    _observers.add(o);
  }

  @override
  removeObserver(Observer o) {
    _observers.remove(o);
  }

  Future<bool> loadCommonData() async {
    commonData = CommonData.fromJson(await json.decode(
        await rootBundle.loadString("assets/back_data/common_data.json")));
    return true;
  }

  Future<bool> loadGameSpecialList() async {
    gameSpecialList = GameInfoList.fromJson(await json.decode(
        await rootBundle.loadString("assets/back_data/game_special.json")));
    return true;
  }

  Future<bool> loadGameRecommendList() async {
    gameRecommendList = GameInfoList.fromJson(await json.decode(
        await rootBundle.loadString("assets/back_data/game_recommend.json")));
    return true;
  }

  Future<bool> loadGameDemandList() async {
    var demandList = GameInfoList.fromJson(await json.decode(
        await rootBundle.loadString("assets/back_data/game_demand.json")));
    for (var game in demandList.list) {
      if (await GameLauncher().isAppInstalled(game.packageName)) {
        gameDemandList.addGame(game);
      }
    }
    return true;
  }

  // Car Nft Market Pool
  Future<bool> saveCarNftPool() async {
    return await _prefs.setString(
        describeEnum(StorageKey.carNftPool), jsonEncode(carNftPool.toJson()));
  }
  Future<bool> loadCarNftPool() async {
    var value = _prefs.getString(describeEnum(StorageKey.carNftPool));
    if (null == value) {
      carNftPool = CarNftList.fromJson(await json.decode(
          await rootBundle.loadString("assets/back_data/car_nfts.json")));
    } else {
      carNftPool = CarNftList.fromJson(json.decode(value));
    }
    return true;
  }

  // Box Nft Market Pool
  Future<bool> saveBoxNftPool() async {
    if (null == account || null == boxNftList) return false;
    return await _prefs.setString(
        _genAutoKey(StorageKey.boxNft), jsonEncode(boxNftList!.toJson()));
  }
  Future<bool> loadBoxNftPool() async {
    var value = _prefs.getString(describeEnum(StorageKey.boxNftPool));
    if (null == value) {
      boxNftPool = BoxNftList.fromJson(await json.decode(
          await rootBundle.loadString("assets/back_data/box_nfts.json")));
    } else {
      boxNftPool = BoxNftList.fromJson(json.decode(value));
    }
    return true;
  }

  // InBox Car Nft Market Pool
  Future<bool> saveBoxCarNftPool() async {
    return await _prefs.setString(describeEnum(StorageKey.boxCarNftPool),
        jsonEncode(boxCarNftPool.toJson()));
  }
  Future<bool> loadBoxCarNftPool() async {
    var value = _prefs.getString(describeEnum(StorageKey.boxCarNftPool));
    if (null == value) {
      boxCarNftPool = CarNftList.fromJson(await json.decode(
          await rootBundle.loadString("assets/back_data/box_car_nfts.json")));
    } else {
      boxCarNftPool = CarNftList.fromJson(json.decode(value));
    }
    return true;
  }

  // Remember
  Future<bool> saveRemember(bool isRemember) async {
    if (null == account) return false;
    var ret =
        await _prefs.setBool(describeEnum(StorageKey.isRemember), isRemember);
    var email = "";
    if (isRemember) {
      email = account!.email;
    }
    ret &=
        await _prefs.setString(describeEnum(StorageKey.rememberEmail), email);
    return ret;
  }
  bool loadRemember() {
    var remember = _prefs.getBool(describeEnum(StorageKey.isRemember)) ?? false;
    isRemember = remember;
    var email = _prefs.getString(describeEnum(StorageKey.rememberEmail)) ?? "";
    rememberEmail = email;
    return true;
  }

  // Account
  Future<bool> saveAccount() async {
    if (null == account) return false;
    return await _prefs.setString(
        _genAutoKey(StorageKey.account), jsonEncode(account!.toJson()));
  }
  bool loadAccount(String email) {
    if (email.isEmpty) return false;
    var value = _prefs.getString(_genKey(StorageKey.account, email)) ?? "";
    if (value.isEmpty) return false;
    account = Account.fromJson(jsonDecode(value));
    return true;
  }

  // Wallet
  Future<bool> saveWallet() async {
    if (null == account || null == wallet) return false;
    return await _prefs.setString(
        _genAutoKey(StorageKey.wallet), jsonEncode(wallet!.toJson()));
  }
  bool loadWallet() {
    if (null == account) return false;
    var value = _prefs.getString(_genAutoKey(StorageKey.wallet)) ?? "";
    if (value.isEmpty) return false;
    wallet = Wallet.fromJson(json.decode(value));
    return true;
  }

  // OnChainWallet
  Future<bool> saveOnChainWallet() async {
    if (null == account || null == onChainWallet) return false;
    return await _prefs.setString(_genAutoKey(StorageKey.onChainWallet),
        jsonEncode(onChainWallet!.toJson()));
  }
  bool loadOnChainWallet() {
    if (null == account) return false;
    var value = _prefs.getString(_genAutoKey(StorageKey.onChainWallet)) ?? "";
    if (value.isEmpty) return false;
    onChainWallet = OnChainWallet.fromJson(json.decode(value));
    return true;
  }

  // Car Nft
  Future<bool> saveCarNftList() async {
    if (null == account || null == carNftList) return false;
    return await _prefs.setString(
        _genAutoKey(StorageKey.carNft), jsonEncode(carNftList!.toJson()));
  }
  bool loadCarNftList() {
    if (null == account) return false;
    var value = _prefs.getString(_genAutoKey(StorageKey.carNft)) ?? "";
    if (value.isEmpty) return false;
    carNftList = CarNftList.fromJson(json.decode(value));
    return true;
  }

  // Box Nft
  Future<bool> saveBoxNftList() async {
    if (null == account || null == boxNftList) return false;
    return await _prefs.setString(
        _genAutoKey(StorageKey.boxNft), jsonEncode(boxNftList!.toJson()));
  }
  bool loadBoxNftList() {
    if (null == account) return false;
    var value = _prefs.getString(_genAutoKey(StorageKey.boxNft)) ?? "";
    if (value.isEmpty) return false;
    boxNftList = BoxNftList.fromJson(json.decode(value));
    return true;
  }

  // Mining Box
  Future<bool> saveMiningBoxList() async {
    if (null == account || null == miningBoxList) return false;
    return await _prefs.setString(
        _genAutoKey(StorageKey.miningBox), jsonEncode(miningBoxList!.toJson()));
  }
  bool loadMiningBoxList() {
    if (null == account) return false;
    var value = _prefs.getString(_genAutoKey(StorageKey.miningBox)) ?? "";
    if (value.isEmpty) return false;
    miningBoxList = MiningBoxList.fromJson(json.decode(value));
    return true;
  }

  // Mining Result
  Future<bool> saveMiningResultList() async {
    if (null == account || null == miningResultList) return false;
    return await _prefs.setString(
        _genAutoKey(StorageKey.miningResult), jsonEncode(miningResultList!.toJson()));
  }
  bool loadMiningResultList() {
    if (null == account) return false;
    var value = _prefs.getString(_genAutoKey(StorageKey.miningResult)) ?? "";
    if (value.isEmpty) return false;
    miningResultList = MiningResultList.fromJson(json.decode(value));
    return true;
  }

  // Transfer History
  Future<bool> saveTransferHistory() async {
    if (null == account || null == transferHistory) return false;
    return await _prefs.setString(_genAutoKey(StorageKey.transferHistory),
        jsonEncode(transferHistory!.toJson()));
  }
  bool loadTransferHistory() {
    if (null == account) return false;
    var value = _prefs.getString(_genAutoKey(StorageKey.transferHistory)) ?? "";
    if (value.isEmpty) return false;
    transferHistory = TransferHistoryList.fromJson(json.decode(value));
    return true;
  }

  // Demand Game List
  Future<bool> saveGameMyDemandList() async {
    if (null == account || null == gameMyDemandList) return false;
    return await _prefs.setString(_genAutoKey(StorageKey.gameDemandList),
        jsonEncode(gameMyDemandList!.toJson()));
  }
  bool loadGameMyDemandList() {
    var value = _prefs.getString(_genAutoKey(StorageKey.gameDemandList)) ?? "";
    if (value.isEmpty) return false;
    gameMyDemandList = GameInfoList.fromJson(json.decode(value));
    return true;
  }

  // Account All Data Save
  Future<bool> savePlayerData() async {
    var ret = true;
    if (null == account) return false;
    ret &= await saveAccount();
    ret &= await saveWallet();
    ret &= await saveCarNftList();
    ret &= await saveBoxNftList();
    ret &= await saveTransferHistory();
    ret &= await saveGameMyDemandList();
    return ret;
  }

  // Account All Data Load
  bool loadPlayerData() {
    var ret = loadWallet();
    ret &= loadOnChainWallet();
    ret &= loadCarNftList();
    ret &= loadBoxNftList();
    ret &= loadTransferHistory();
    ret &= loadMiningResultList();
    ret &= loadGameMyDemandList();
    if (ret) {
      for (var o in gameMyDemandList?.list ?? []) {
        gameDemandList.removeGame(o);
      }
    }
    return ret;
  }

  // Storage Clear
  Future<bool> clear() async {
    return await _prefs.clear();
  }

  Future<bool> signIn(String email, String password, bool isRemember) async {
    if (email.isEmpty || password.isEmpty) return false;

    if (!loadAccount(email)) return false;
    if (!account!.isValidPassword(password)) return false;

    var ret = await saveRemember(isRemember);
    return ret &= loadPlayerData();
  }

  Future<bool> signOut() async {
    var ret = await saveAccount();
    return ret &= await savePlayerData();
  }

  Future<bool> signUp(
      String name, String email, String password, String repeat) async {
    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        password != repeat) {
      return false;
    }

    account =
        Account(
            _baseId,
            password,
            email,
            name,
            commonData.initialInfo.maxPower);

    wallet = Wallet(
      ++_baseId,
      account!.id,
      commonData.initialInfo.defaultPerAmount,
      commonData.initialInfo.defaultXPerAmount,
      commonData.initialInfo.defaultHavahAmount,
      DateTime.now(),
      DateTime.now(),
    );

    onChainWallet = OnChainWallet(
      ++_baseId,
      account!.id,
      commonData.initialInfo.defaultOnChainPerAmount,
      commonData.initialInfo.defaultOnChainXPerAmount,
      commonData.initialInfo.defaultOnChainHavahAmount,
      commonData.initialInfo.defaultOnChainUsdcAmount,
      DateTime.now(),
      DateTime.now(),
    );

    carNftList = CarNftList([]);
    boxNftList = BoxNftList([]);
    miningBoxList = MiningBoxList([]);
    miningResultList = MiningResultList([]);
    transferHistory = TransferHistoryList([]);
    gameMyDemandList = GameInfoList([]);

    if (!(await saveAccount())) return false;
    if (!(await saveWallet())) return false;
    if (!(await saveOnChainWallet())) return false;
    if (!(await saveCarNftList())) return false;
    if (!(await saveBoxNftList())) return false;
    if (!(await saveMiningBoxList())) return false;
    if (!(await saveMiningResultList())) return false;
    if (!(await saveTransferHistory())) return false;
    if (!(await saveGameMyDemandList())) return false;

    account = null;
    wallet = null;
    onChainWallet = null;
    carNftList = null;
    boxNftList = null;
    miningBoxList = null;
    miningResultList = null;
    transferHistory = null;
    gameMyDemandList = null;

    return await _prefs.setInt(describeEnum(StorageKey.baseId), ++_baseId);
  }

  bool _buyNft({double havah = 0.0, double per = 0.0, double xPer = 0.0}) {
    if (null == wallet) return false;
    if (havah > wallet!.balanceHavah ||
        per > wallet!.balancePer ||
        xPer > wallet!.balanceXPer) return false;

    if (0.0 < havah) {
      wallet!.balanceHavah -= havah;
    }
    if (0.0 < per) {
      wallet!.balancePer -= havah;
    }
    if (0.0 < xPer) {
      wallet!.balanceXPer -= havah;
    }

    return true;
  }

  Future<bool> buyCar(CarNft nft) async {
    if (0 > carNftPool!.list.indexWhere((o) => o.id == nft.id)) return false;
    if (0 <= carNftList!.list.indexWhere((o) => o.id == nft.id)) return false;

    if (!_buyNft(havah: nft.price)) return false;

    carNftList!.list.add(nft);
    carNftPool!.list.removeWhere((o) => o.id == nft.id);

    var ret = await saveCarNftList();
    ret &= await saveCarNftPool();

    notifyObserver();
    return ret;
  }

  Future<BoxNft?> buyBox(BoxNft nft) async {
    if (0 > boxNftPool!.list.indexWhere((o) => o.id == nft.id)) return null;
    if (0 <= boxNftList!.list.indexWhere((o) => o.id == nft.id)) return null;

    boxNftList!.list.add(nft);
    boxNftPool!.list.removeWhere((o) => o.id == nft.id);

    var ret = await saveBoxNftList();
    ret &= await saveBoxNftPool();

    notifyObserver();
    return ret ? nft : null;
  }

  Future<CarNft?> openBox(BoxNft box) async {
    if (0 > boxNftList!.list.indexWhere((o) => o.id == box.id)) return null;
    var car = boxCarNftPool!.list.firstOrNullWhere((o) => o.id == box.carNftId);
    if (null == car) return null;

    // todo: cost calculate

    boxNftList!.list.removeWhere((o) => o.id == box.id);
    boxCarNftPool!.list.removeWhere((o) => o.id == car.id);
    carNftList!.list.add(car);

    var ret = await saveBoxNftList();
    ret &= await saveBoxCarNftPool();
    ret &= await saveCarNftList();
    notifyObserver();
    return ret ? car : null;
  }

  Future<CarNft?> openMiningBox(MiningBox box) async {
    if (0 > miningBoxList!.list.indexWhere((o) => o.id == box.id)) return null;

    if (!wallet!.credit(CoinType.XPer, box.getTotalOpenCost())) return null;

    miningBoxList!.list.removeWhere((o) => o.id == box.id);

    var ret = await saveMiningBoxList();
    notifyObserver();

    // dumy car
    return ret ? carNftList!.list[0] : null;
  }

  bool debit(CoinType coinType, double amount) {
    if (!onChainWallet!.credit(coinType, amount)) return false;
    if (!wallet!.debit(coinType, amount - _fee)) {
      onChainWallet!.debit(coinType, amount + constTransferFee);
      return false;
    }

    transferHistory!.debit(coinType, amount);
    notifyObserver();
    return true;
  }

  bool credit(CoinType coinType, double amount) {
    if (!wallet!.credit(coinType, amount)) return false;
    if (!onChainWallet!.debit(coinType, amount - _fee)) {
      wallet!.debit(coinType, amount + constTransferFee);
      return false;
    }

    transferHistory!.credit(coinType, amount);
    notifyObserver();
    return true;
  }

  Future<BoxNft?> minting(CarNft src, CarNft dst) async {
    if (0 >= src.mintingCount || 0>= dst.mintingCount) return null;
    if (!wallet!.credit(CoinType.Per, commonData.initialInfo.breedPerCost)) return null;
    if (!wallet!.credit(CoinType.XPer, commonData.initialInfo.breedXPerCost)) {
      wallet!.debit(CoinType.Per, commonData.initialInfo.breedPerCost);
      return null;
    }

    var box = await buyBox(boxNftPool.list[Random().nextInt(boxNftPool.list.length)]);
    if (null == box) {
      wallet!.debit(CoinType.Per, commonData.initialInfo.breedPerCost);
      wallet!.debit(CoinType.XPer, commonData.initialInfo.breedXPerCost);
      return null;
    }
    src.mintingCount -= 1;
    dst.mintingCount -= 1;
    return box;
  }

  GameInfoList getCategoryGameList(int category) {
    switch (category) {
      case 0:
        return GameInfoList(gameSpecialList.list + gameRecommendList.list + (gameMyDemandList?.list ?? []));
      case 1:
        return gameSpecialList;
      case 2:
        return gameRecommendList;
      case 3:
        return gameMyDemandList ?? GameInfoList([]);
      default:
        return GameInfoList([]);
    }
  }

  Future<int> demandGame(GameInfo game) async {
    return 0;
  }

  MiningResult? miningStart(GameInfo game) {
    if (!isPossibleMining(game)) return null;

    var miningResult = MiningResult(
        ++_baseId,
        game.id,
        0.0,
        0.0,
        0,
        DateTime.now(),
        DateTime.now()
    );
    miningResultList!.list.add(miningResult);

    notifyObserver();

    return miningResult;
  }

  bool isPossibleMining(GameInfo game) {
    if (game.acceptNoCarUser()){
      if (0 >= account!.power) return false;
      if (!checkMiningPerAmount(game) && !checkMiningXPerAmount(game)) return false;
      return true;
    }

    var car = getLobbySelectedCar();
    if (null == car) return false;
    if (car!.grade < game.needCarGrade) return false;
    if (car!.level < game.minCarLevel) return false;
    if (0 != game.needCarType && car!.type != game.needCarType) return false;
    if (0 >= account!.power) return false;
    if (!checkMiningPerAmount(game) && !checkMiningXPerAmount(game)) return false;
    return true;
  }

  bool checkMiningPerAmount(GameInfo game) {
    // 게임 일일 채굴량 확인
    var dayMiningPer = miningResultList!.getTodayMiningPerAmount(game.id);
    if (commonData.initialInfo.dailyLimitPer < dayMiningPer) return false;

    // todo: 게임 전체 채굴량

    return true;
  }

  bool checkMiningXPerAmount(GameInfo game) {
    // 게임 일일 채굴량 확인
    var dayMiningXPer = miningResultList!.getTodayMiningXPerAmount(game.id);
    if (commonData.initialInfo.dailyLimitXPer < dayMiningXPer) return false;

    // todo: 게임 전체 채굴량

    return true;
  }

  bool miningToken(GameInfo game, MiningResult mining, int timeStamp) {
    var bXPer = checkMiningXPerAmount(game);
    var bPer = checkMiningPerAmount(game);
    if (!bXPer && !bPer) return false;

    var per = 0.0;
    var xper = 0.0;
    if (bPer) {
      per = game.perPerPower;
    }
    if (bXPer) {
      xper = game.xPerPerPower;
    }

    var multiple = mining.mining(timeStamp, per, xper);
    print("---------- mining XPer(${xper * multiple}) Per(${per * multiple})");
    notifyObserver();

    if (0 >= multiple) return false;
    account!.power -= (1 * multiple);
    wallet!.balancePer += (per * multiple);
    wallet!.balanceXPer += (xper * multiple);

    saveWallet();
    return true;
  }

  void miningSpecialBox(GameInfo game, MiningResult mining) {
    var playDuration = mining.getPlayTime();
    if (commonData.initialInfo.getRateSpecialBoxMining(playDuration.inSeconds)
        < Random().nextDouble()) return;

    var miningBox = miningBoxList!.mining(
        ++_baseId,
        Duration(seconds: commonData.initialInfo.specialBoxInitialLifeTime),
        commonData.initialInfo.specialBoxOpenBaseCost,
        commonData.initialInfo.specialBoxOpenCostPerSec);

    mining.miningBoxId = miningBox.id;

    notifyObserver();

    saveMiningBoxList();
  }

  void miningEnd(GameInfo game, MiningResult mining) {
    mining.miningEnd();

    miningSpecialBox(game, mining);

    notifyObserver();

    saveWallet();
    saveMiningResultList();
  }

  GameInfoList getAllDemandGameList() {
    return GameInfoList(gameDemandList.list + gameMyDemandList!.list);
  }

  bool addDemandGame(GameInfo game) {
    gameDemandList.removeGame(game);
    if (!gameMyDemandList!.addGame(game)) return false;
    notifyObserver();
    return true;
  }
}
