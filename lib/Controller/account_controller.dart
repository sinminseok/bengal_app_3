import 'package:random_string/random_string.dart';
import 'back_data_controller.dart';
import '../models/account.dart';
import '../models/wallet.dart';

class AccountController {
  static final AccountController _instance = AccountController._internal();

  factory AccountController() {
    return _instance;
  }

  AccountController._internal();

  int _accountId = 0;

  Account? account;
  Wallet? wallet;

  bool signIn(String email, String password) {
    account = BackDataManager().accountList.getToEmail(email);
    if (null == account || false == account?.isValidPassword(password)) return false;
    if (null == (wallet = BackDataManager().walletList.get(account?.id ?? 0))) return false;
    return true;
  }

  bool signUp(String name, String email, String password, String repeat) {
    if (name.isEmpty || email.isEmpty || password.isEmpty || password != repeat) return false;
    if (null != BackDataManager().accountList.getToEmail(email)) return false;

    account = Account(
        ++_accountId,
        password,
        email,
        name,
        randomString(10),
        DateTime.now(),
        DateTime.now());

    return true;
  }
}
