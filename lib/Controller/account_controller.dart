import '../common/back_data/back_data_manager.dart';
import '../models/account.dart';
import '../models/wallet.dart';

class AccountController {
  static final AccountController _instance = AccountController._internal();

  factory AccountController() {
    return _instance;
  }

  AccountController._internal();

  Account? account;
  Wallet? wallet;

  bool signIn(String name, String password) {
    account = BackDataManager().accountList.getToName(name);
    if (null == account || false == account?.isValidPassword(password)) return false;
    if (null == (wallet = BackDataManager().walletList.get(account?.id ?? 0))) return false;
    return true;
  }
}
