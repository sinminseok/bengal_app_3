import 'dart:convert';
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
import '../models/wallet.dart';

enum StorageKey {
  baseId,
  isRemember,
  rememberEmail,
  account,
  wallet,
  carNft,
  boxNft,
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

  late int _baseId = 1;
  late List<Observer> _observers = [];

  late bool isRemember = false;
  late String rememberEmail = '';

  late Account? account;
  late Wallet? wallet;
  late CarNftList? carNftList;
  late BoxNftList? boxNftList;

  late CommonData commonData;
  late CarNftList? carNftPool;
  late BoxNftList? boxNftPool;
  late CarNftList? boxCarNftPool;
  late GameInfoList gameList;

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
    await loadGameList();
    await loadCarNftPool();
    await loadBoxNftPool();
    await loadBoxCarNftPool();
  }

  @override
  notifyObserver() {
    _observers.map((observer){
      observer.update();
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

  Future<bool> loadGameList() async {
    gameList = GameInfoList.fromJson(await json.decode(
        await rootBundle.loadString("assets/back_data/game_infos.json")));
    return true;
  }

  Future<bool> saveRemember(bool isRemember) async {
    if (null == account) return false;
    var ret = await _prefs.setBool(describeEnum(StorageKey.isRemember), isRemember);
    var email = "";
    if (isRemember) {
      email = account!.email;
    }
    ret &= await _prefs.setString(describeEnum(StorageKey.rememberEmail), email);
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

  // Car Nft Market Pool
  Future<bool> saveCarNftPool() async {
    if (null == carNftPool) return false;
    return await _prefs.setString(
        describeEnum(StorageKey.carNftPool), jsonEncode(carNftPool!.toJson()));
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

  // In Box Car Nft Market Pool
  Future<bool> saveBoxCarNftPool() async {
    if (null == boxCarNftPool) return false;
    return await _prefs.setString(
        describeEnum(StorageKey.boxCarNftPool), jsonEncode(boxCarNftPool!.toJson()));
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

  // Account All Data Save
  Future<bool> savePlayerData() async {
    var ret = true;
    if (null == account) return false;
    ret &= await saveAccount();
    ret &= await saveWallet();
    ret &= await saveCarNftList();
    ret &= await saveBoxNftList();
    return ret;
  }

  // Account All Data Load
  bool loadPlayerData() {
    var ret = loadWallet();
    ret &= loadCarNftList();
    ret &= loadBoxNftList();
    return ret;
  }

  // Storage Clear
  Future<bool> clear() async {
    return await _prefs.clear();
  }

  bool signIn(String email, String password, bool isRemember) {
    if (email.isEmpty || password.isEmpty) return false;

    if (!loadAccount(email)) return false;
    if (!account!.isValidPassword(password)) return false;

    saveRemember(isRemember);
    return loadPlayerData();
  }

  Future<bool> signOut() async {
    var ret = await saveAccount();
    ret &= await savePlayerData();
    return ret;
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
        Account(_baseId, password, email, name, DateTime.now(), DateTime.now());

    wallet = Wallet(
      ++_baseId,
      account!.id,
      commonData.initialInfo.defaultPerAmount,
      commonData.initialInfo.defaultXPerAmount,
      commonData.initialInfo.defaultHavahAmount,
      DateTime.now(),
      DateTime.now(),
    );

    carNftList = CarNftList([]);
    boxNftList = BoxNftList([]);

    if (!(await saveAccount())) return false;
    if (!(await saveWallet())) return false;
    if (!(await saveCarNftList())) return false;
    if (!(await saveBoxNftList())) return false;
    account = null;
    wallet = null;
    carNftList = null;
    boxNftList = null;

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

    notifyObserver();
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
    return ret;
  }

  Future<bool> buyBox(BoxNft nft) async {
    if (0 > boxNftPool!.list.indexWhere((o) => o.id == nft.id)) return false;
    if (0 <= boxNftList!.list.indexWhere((o) => o.id == nft.id)) return false;

    if (!_buyNft(havah: nft.price)) return false;

    boxNftList!.list.add(nft);
    boxNftPool!.list.removeWhere((o) => o.id == nft.id);

    var ret = await saveBoxNftList();
    ret &= await saveBoxNftPool();
    return ret;
  }

  Future<bool> openBox(BoxNft nft) async {
    if (0 > boxNftList!.list.indexWhere((o) => o.id == nft.id)) return false;
    var car = boxCarNftPool!.list.firstOrNullWhere((o) => o.id == nft.carNftId);
    if (null == car) return false;

    // todo: cost calculate

    boxNftList!.list.removeWhere((o) => o.id == nft.id);
    boxCarNftPool!.list.removeWhere((o) => o.id == car.id);
    carNftList!.list.add(car);

    var ret = await saveBoxNftList();
    ret &= await saveBoxCarNftPool();
    ret &= await saveCarNftList();
    return ret;
  }

  Future<bool> mining() async {
    return false;
  }

}
