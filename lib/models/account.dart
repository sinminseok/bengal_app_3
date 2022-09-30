import 'package:flinq/flinq.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable()
class Account {
  final int id;
  final String password;
  final String email;
  final String name;
  late final int power;
  late double todayMiningPer = 0.0;
  late double todayMiningXPer = 0.0;

  Account(this.id,
      this.password,
      this.email,
      this.name,
      this.power,
      [this.todayMiningPer = 0.0,
        this.todayMiningXPer = 0.0]);

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);

  bool isValidPassword(String password) => this.password == password;

  bool mining(int output) {
    if (output > power) return false;
    power -= output;
    return true;
  }

//todo: daily reset
// charge
}

@JsonSerializable()
class AccountList {
  final List<Account> list;

  AccountList(this.list);

  factory AccountList.fromJson(Map<String, dynamic> json) =>
      _$AccountListFromJson(json);
  Map<String, dynamic> toJson() => _$AccountListToJson(this);

  Account? getToId(int id) {
    if (0 >= id || list.isEmpty) return null;
    return list.firstOrNullWhere((o) => o.id == id);
  }

  Account? getToEmail(String email) {
    if (email.isEmpty || list.isEmpty) return null;
    return list.firstOrNullWhere((o) => o.email == email);
  }
}
