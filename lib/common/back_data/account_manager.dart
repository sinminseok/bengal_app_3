// import 'package:flutter/cupertino.dart';
// import 'package:yaml/yaml.dart';
// import '../../models/account.dart';
// import '../config_base.dart';
//
// class AccountList extends ConfigBase {
//  List<Account> accountList = [];
//
//   static AccountList fromJson(YamlMap map) {
//     var ret = AccountList();
//     debugPrint(map.toString());
//     if (map.containsKey("Version")) ret.Version = map["Version"];
//     if (map.containsKey("accountList")) {
//       map["accountList"].forEach((o) => ret.accountList.add(Account(
//           o["id"],
//           o["password"],
//           o["email"],
//           o["name"],
//           o["twoFaKey"],
//           o["createdAt"],
//           o["updatedAt"],
//           o["enabled"],
//           o["maxPower"],
//           o["dailyPower"],
//           o["timeToMaxPower"])));
//     }
//
//     return ret;
//   }
//
//   Account? get(int id) {
//     if (0 >= id) return null;
//     return accountList.firstWhere((o) => o.id == id);
//   }
// }
