import 'package:json_annotation/json_annotation.dart';
part 'wallet.g.dart';

@JsonSerializable()
class Wallet {
  late int id;
  late int accountId;
  late double balancePer;
  late double balanceXPer;
  late DateTime createdAt;
  late DateTime updatedAt;

  Wallet(
      this.id,
      this.accountId,
      this.balancePer,
      this.balanceXPer,
      this.createdAt,
      this.updatedAt,
      );

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
  Map<String, dynamic> toJson() => _$WalletToJson(this);
}
