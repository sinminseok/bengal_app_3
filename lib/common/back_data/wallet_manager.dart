import '../../models/wallet.dart';
import '../config_base.dart';

class WalletList extends ConfigBase {
  List<Wallet> list = [];

  static WalletList fromJson(Map<String, dynamic> map) {
    var ret = WalletList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("accountList")) {
      map['accountList'].asMap().forEach((i, o) {
        ret.list.add(Wallet.fromJson(o));
      });
    }
    return ret;
  }

  Wallet? get(int accountId) {
    if (0 >= accountId || list.isEmpty) return null;
    return list.firstWhere((o) => o.accountId == accountId);
  }
}
