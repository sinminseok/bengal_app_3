import 'package:flinq/flinq.dart';
import '../../models/account.dart';
import '../config_base.dart';

class AccountList extends ConfigBase {
  List<Account> list = [];

  static AccountList fromJson(Map<String, dynamic> map) {
    var ret = AccountList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("accountList")) {
      map['accountList'].asMap().forEach((i, o) {
        ret.list.add(Account.fromJson(o));
      });
    }
    return ret;
  }

  Account? getToId(int id) {
    if (0 >= id || list.isEmpty) return null;
    return list.firstOrNullWhere((o) => o.id == id);
  }

  Account? getToName(String name) {
    if (name.isEmpty || list.isEmpty) return null;
    return list.firstOrNullWhere((o) => o.name == name);
  }
}
