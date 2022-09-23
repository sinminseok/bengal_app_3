import 'package:flinq/flinq.dart';
import 'package:json_annotation/json_annotation.dart';
part 'wallet.g.dart';

@JsonSerializable()
class Wallet {
  final int id;
  final int accountId;
  final double balancePer;
  final double balanceXPer;
  final DateTime createdAt;
  final DateTime updatedAt;

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

@JsonSerializable()
class WalletList {
  final List<Wallet> list;

  WalletList(this.list);

  factory WalletList.fromJson(Map<String, dynamic> json) => _$WalletListFromJson(json);
  Map<String, dynamic> toJson() => _$WalletListToJson(this);

  Wallet? get(int accountId) {
    if (0 >= accountId || list.isEmpty) return null;
    return list.firstOrNullWhere((o) => o.accountId == accountId);
  }
}
