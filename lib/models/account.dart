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
  final int maxPower;
  final int dailyPower;
  final DateTime timeToMaxPower;

  Account(
      this.id,
      this.password,
      this.email,
      this.name,
      this.twoFaKey,
      this.createdAt,
      this.updatedAt,
      this.enabled,
      this.maxPower,
      this.dailyPower,
      this.timeToMaxPower);

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);

  bool isValidPassword(String password) => this.password == password;
}
