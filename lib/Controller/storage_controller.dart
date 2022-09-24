import 'dart:convert';
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
  }

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

  Future<bool> savePlayerData() async {
    var ret = true;
    if (null == account) return false;
    ret &= await saveAccount();
    ret &= await saveWallet();
    ret &= await saveCarNftList();
    ret &= await saveBoxNftList();
    return ret;
  }

  bool loadPlayerData() {
    var ret = loadWallet();
    ret &= loadCarNftList();
    ret &= loadBoxNftList();
    return ret;
  }

  Future<bool> clear() async {
    return await _prefs.clear();
  }

  bool signIn(String email, String password) {
    if (email.isEmpty || password.isEmpty) return false;

    if (!loadAccount(email)) return false;
    if (!account!.isValidPassword(password)) return false;
    return loadPlayerData();
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
}
