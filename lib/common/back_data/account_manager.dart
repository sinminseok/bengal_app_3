import 'package:flutter/cupertino.dart';
import 'package:yaml/yaml.dart';
import '../../models/account.dart';
import '../config_base.dart';

class AccountList extends ConfigBase {
  List<Account> accountList = [];

  static AccountList fromJson(YamlMap map) {
    var ret = AccountList();


    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("accountList")) {
      debugPrint('map: $map');
      // for (final mapEntry in map["accountList"].asMap().entries) {
      //   final key = mapEntry.key;
      //   final value = mapEntry.value;
      //   debugPrint('Key: $key, Value: $value');  // Key: a, Value: 1 ...
      //       ret.accountList.add(Account(
      //         value['id'],
      //         value['password'],
      //         // o["email"],
      //         // o["name"],
      //         // o["twoFaKey"],
      //         //DateTime.parse(o["createdAt"]),
      //         //DateTime.parse(o["updatedAt"]),
      //         // o["enabled"],
      //         // o["maxPower"],
      //         // o["dailyPower"],
      //         //DateTime.parse(o["timeToMaxPower"]
      //       ));
      // }

      try {
        map['accountList'].asMap().forEach((i, o) {
          // debugPrint('index=$i, value=$o');
          // var id = o['id'];
          // debugPrint('id=$id');

          ret.accountList.add(Account(
            o["id"],
            o["password"],
            o["email"],
            o["name"],
            // o["twoFaKey"],
            //DateTime.parse(o["createdAt"]),
            //DateTime.parse(o["updatedAt"]),
            // o["enabled"],
            // o["maxPower"],
            // o["dailyPower"],
            //DateTime.parse(o["timeToMaxPower"]
          ));

        });
      } catch (e) {
        debugPrint('exception $e');
      }


    }

    debugPrint('list: $ret');
    return ret;
  }

  Account? get(int id) {
    if (0 >= id) return null;
    return accountList.firstWhere((o) => o.id == id);
  }
}
