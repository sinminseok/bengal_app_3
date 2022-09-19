import "package:flutter/services.dart";
import "package:yaml/yaml.dart";
import '../../models/account.dart';
import '../../types/string_type.dart';
import '../config_base.dart';
import 'account_manager.dart';

class BackDataManager {
  static final BackDataManager _instance = BackDataManager._internal();

  AccountList _accountList = AccountList();

  factory BackDataManager() {
    return _instance;
  }

  Future<void> _loadData() async {
    _accountList = AccountList.fromJson(loadYaml(
        await rootBundle.loadString("assets/back_data/accounts.yaml")));
  }

  BackDataManager._internal() {
    _loadData();
  }

  Account? getAccount(int id) => _accountList.get(id);
}
