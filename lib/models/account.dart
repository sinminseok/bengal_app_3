import 'package:flinq/flinq.dart';
import 'package:json_annotation/json_annotation.dart';
part 'account.g.dart';

@JsonSerializable()
class Account {
  final int id;
  final String password;
  final String email;
  final String name;
  final String twoFaKey;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool enabled;

  Account(
      this.id,
      this.password,
      this.email,
      this.name,
      this.twoFaKey,
      this.createdAt,
      this.updatedAt,
      [this.enabled = true]);

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);

  bool isValidPassword(String password) => this.password == password;
}

@JsonSerializable()
class AccountList {
  final List<Account> list;

  AccountList(
      this.list
      );

  factory AccountList.fromJson(Map<String, dynamic> json) => _$AccountListFromJson(json);
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
