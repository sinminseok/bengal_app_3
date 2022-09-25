import 'dart:convert';
import 'package:flinq/flinq.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:random_string/random_string.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/account.dart';
import '../models/box.dart';
import '../models/car.dart';
import '../models/common_data.dart';
import '../models/wallet.dart';

enum StorageKey {
  baseId,
  account,
  wallet,
  carNft,
  boxNft,
  carNftPool,
  boxNftPool,
  boxCarNftPool,
}

class StorageController {
  static final StorageController _instance = StorageController._internal();

  factory StorageController() {
    return _instance;
  }

  StorageController._internal() {
    _loadStorage();
  }

  late SharedPreferences _prefs;

  late int _baseId = 1;

  late Account? account;
  late Wallet? wallet;
  late CarNftList? carNftList;
  late BoxNftList? boxNftList;

  late CommonData commonData;
  late CarNftList? carNftPool;
  late BoxNftList? boxNftPool;
  late CarNftList? boxCarNftPool;

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

    commonData = CommonData.fromJson(await json.decode(
        await rootBundle.loadString("assets/back_data/common_data.json")));
    await loadCarNftPool();
    await loadBoxNftPool();
    await loadBoxCarNftPool();
  }

  // Account
  Future<bool> saveAccount() async {
    if (null == account) return false;
    return await _prefs.setString(
        _genAutoKey(StorageKey.account), jsonEncode(account!.toJson()));
  }

  bool loadAccount(String email) {
    if (email.isEmpty) return false;
    var value = _prefs.getString(_genKey(StorageKey.account, email));
    if (null == value || value.isEmpty) return false;
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
    var value = _prefs.getString(_genAutoKey(StorageKey.wallet));
    if (null == value || value.isEmpty) return false;
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
    var value = _prefs.getString(_genAutoKey(StorageKey.carNft));
    if (null == value || value.isEmpty) return false;
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
    var value = _prefs.getString(_genAutoKey(StorageKey.boxNft));
    if (null == value || value.isEmpty) return false;
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

  bool signIn(String email, String password) {
    if (email.isEmpty || password.isEmpty) return false;

    if (!loadAccount(email)) return false;
    if (!account!.isValidPassword(password)) return false;
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

  Future<bool> buyCar(CarNft nft) async {
    if (0 > carNftPool!.list.indexWhere((o) => o.id == nft.id)) return false;
    if (0 <= carNftList!.list.indexWhere((o) => o.id == nft.id)) return false;
    carNftList!.list.add(nft);
    carNftPool!.list.removeWhere((o) => o.id == nft.id);

    var ret = await saveCarNftList();
    ret &= await saveCarNftPool();
    return ret;
  }

  Future<bool> buyBox(BoxNft nft) async {
    if (0 > boxNftPool!.list.indexWhere((o) => o.id == nft.id)) return false;
    if (0 <= boxNftList!.list.indexWhere((o) => o.id == nft.id)) return false;
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
