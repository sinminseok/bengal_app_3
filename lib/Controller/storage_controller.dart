import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:random_string/random_string.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/account.dart';
import '../models/box.dart';
import '../models/car.dart';
import '../models/gem.dart';
import '../models/wallet.dart';

enum StorageKey {
  baseId,
  account,
  wallet,
  carNft,
  boxNft,
  gemNft,
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
  late GemNftList? gemNftList;

  String _genKey(StorageKey key) => "${account!.id}_${describeEnum(key)}";

  Future<void> _loadStorage() async {
    _prefs = await SharedPreferences.getInstance();

    var baseId = _prefs.getInt(describeEnum(StorageKey.baseId));
    if (null != baseId) {
      _baseId = baseId;
    }
    //
    // var sAccount = _prefs.getString(describeEnum(StorageKey.account));
    // if (null != sAccount) {
    //   account = Account.fromJson(await json.decode(sAccount));
    // }
    //
    // var sWallet = _prefs.getString(describeEnum(StorageKey.wallet));
    // if (null != sWallet) {
    //   wallet = Wallet.fromJson(await json.decode(sWallet));
    // }
    //
    // var sCarNftList = _prefs.getString(describeEnum(StorageKey.carNft));
    // if (null != sCarNftList) {
    //   carNftList = CarNftList.fromJson(await json.decode(sCarNftList));
    // }
    //
    // var sBoxNftList = _prefs.getString(describeEnum(StorageKey.boxNft));
    // if (null != sBoxNftList) {
    //   boxNftList = BoxNftList.fromJson(await json.decode(sBoxNftList));
    // }
    //
    // var sGemNftList = _prefs.getString(describeEnum(StorageKey.gemNft));
    // if (null != sGemNftList) {
    //   gemNftList = GemNftList.fromJson(await json.decode(sGemNftList));
    // }
  }

  Future<bool> saveAccount() async {
    if (null == account) return false;
    return await _prefs.setString(_genKey(StorageKey.account), account!.toJson().toString());
  }

  Future<bool> saveWallet() async {
    if (null == account || null == wallet) return false;
    return await _prefs.setString(_genKey(StorageKey.wallet), wallet!.toJson().toString());
  }

  Future<bool> saveCarNftList() async {
    if (null == account || null == carNftList) return false;
    return await _prefs.setString(_genKey(StorageKey.carNft), carNftList!.toJson().toString());
  }

  Future<bool> saveBoxNftList() async {
    if (null == account || null == boxNftList) return false;
    return await _prefs.setString(_genKey(StorageKey.boxNft), boxNftList!.toJson().toString());
  }

  Future<bool> saveGemNftList() async {
    if (null == account || null == gemNftList) return false;
    return await _prefs.setString(_genKey(StorageKey.gemNft), gemNftList!.toJson().toString());
  }

  Future<bool> saveAll() async {
    var ret = true;

    if (null == account) return false;
    ret &= await _prefs.setString(_genKey(StorageKey.account), account!.toJson().toString());
    if (null != wallet) ret &= await _prefs.setString(_genKey(StorageKey.wallet), wallet!.toJson().toString());
    if (null != carNftList) ret &= await _prefs.setString(_genKey(StorageKey.carNft), carNftList!.toJson().toString());
    if (null != boxNftList) ret &= await _prefs.setString(_genKey(StorageKey.boxNft), boxNftList!.toJson().toString());
    if (null != gemNftList) ret &= await _prefs.setString(_genKey(StorageKey.gemNft), gemNftList!.toJson().toString());
    return ret;
  }

  void clear() {
    _prefs.clear();
  }

  bool signIn(String email, String password) {
    if (email.isEmpty || password.isEmpty) return false;

    // account = BackDataManager().accountList.getToEmail(email);
    // if (null == account || false == account?.isValidPassword(password)) return false;
    // if (null == (wallet = BackDataManager().walletList.get(account?.id ?? 0))) return false;
    return true;
  }

  bool signUp(String name, String email, String password, String repeat) {
    if (name.isEmpty || email.isEmpty || password.isEmpty || password != repeat) return false;

    account = Account(
        _baseId,
        password,
        email,
        name,
        randomString(10),
        DateTime.now(),
        DateTime.now());

    _prefs.setInt(describeEnum(StorageKey.baseId), ++_baseId);

    return true;
  }
}
