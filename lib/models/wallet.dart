import 'package:flinq/flinq.dart';
import 'package:json_annotation/json_annotation.dart';

import '../types/common.dart';
import '../types/constants.dart';
part 'wallet.g.dart';

@JsonSerializable()
class Wallet {
  final int id;
  final int accountId;
  late double balancePer;
  late double balanceXPer;
  late double balanceHavah;
  final DateTime createdAt;
  late DateTime updatedAt;

  Wallet(
      this.id,
      this.accountId,
      this.balancePer,
      this.balanceXPer,
      this.balanceHavah,
      this.createdAt,
      this.updatedAt,
      );

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
  Map<String, dynamic> toJson() => _$WalletToJson(this);

  String balanceXPerString() => double.parse(balanceXPer.toStringAsFixed(2)).toString();
  String balancePerString() => double.parse(balancePer.toStringAsFixed(2)).toString();
  String balanceHavahString() => double.parse(balanceHavah.toStringAsFixed(2)).toString();

  bool isValidCredit(CoinType coinType, double amount) {
    switch (coinType) {
      case CoinType.XPer:
        if (amount > balanceXPer - constTransferFee) return false;
        break;
      case CoinType.Per:
        if (amount > balancePer - constTransferFee) return false;
        break;
      case CoinType.Havah:
        if (amount > balanceHavah - constTransferFee) return false;
        break;
      default: return false;
    }
    return true;
  }

  bool debit(CoinType coinType, double amount) {
    switch (coinType) {
      case CoinType.XPer:
        balanceXPer += (amount - constTransferFee);
        break;
      case CoinType.Per:
        balancePer += (amount - constTransferFee);
        break;
      case CoinType.Havah:
        balanceHavah += (amount - constTransferFee);
        break;
      default: return false;
    }
    return true;
  }

  bool credit(CoinType coinType, double amount) {
    if (!isValidCredit(coinType, amount)) return false;
    switch (coinType) {
      case CoinType.XPer:
        balanceXPer -= amount;
        break;
      case CoinType.Per:
        balancePer -= amount;
        break;
      case CoinType.Havah:
        balanceHavah -= amount;
        break;
      default: return false;
    }
    return true;
  }
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

@JsonSerializable()
class OnChainWallet {
  final int id;
  final int accountId;
  late double balancePer;
  late double balanceXPer;
  late double balanceHavah;
  late double balanceUsdc;
  final DateTime createdAt;
  late DateTime updatedAt;

  OnChainWallet(
      this.id,
      this.accountId,
      this.balancePer,
      this.balanceXPer,
      this.balanceHavah,
      this.balanceUsdc,
      this.createdAt,
      this.updatedAt,
      );

  factory OnChainWallet.fromJson(Map<String, dynamic> json) => _$OnChainWalletFromJson(json);
  Map<String, dynamic> toJson() => _$OnChainWalletToJson(this);

  String balanceXPerString() => double.parse(balanceXPer.toStringAsFixed(2)).toString();
  String balancePerString() => double.parse(balancePer.toStringAsFixed(2)).toString();
  String balanceHavahString() => double.parse(balanceHavah.toStringAsFixed(2)).toString();
  String balanceUsdcString() => double.parse(balanceUsdc.toStringAsFixed(2)).toString();

  bool isValidCredit(CoinType coinType, double amount) {
    switch (coinType) {
      case CoinType.XPer:
        if (amount > balanceXPer - constTransferFee) return false;
        break;
      case CoinType.Per:
        if (amount > balancePer - constTransferFee) return false;
        break;
      case CoinType.Havah:
        if (amount > balanceHavah - constTransferFee) return false;
        break;
      default: return false;
    }
    return true;
  }

  bool debit(CoinType coinType, double amount) {
    switch (coinType) {
      case CoinType.XPer:
        balanceXPer += (amount - constTransferFee);
        break;
      case CoinType.Per:
        balancePer += (amount - constTransferFee);
        break;
      case CoinType.Havah:
        balanceHavah += (amount - constTransferFee);
        break;
      default: return false;
    }
    return true;
  }

  bool credit(CoinType coinType, double amount) {
    if (!isValidCredit(coinType, amount)) return false;
    switch (coinType) {
      case CoinType.XPer:
        balanceXPer -= amount;
        break;
      case CoinType.Per:
        balancePer -= amount;
        break;
      case CoinType.Havah:
        balanceHavah -= amount;
        break;
      default: return false;
    }
    return true;
  }
}

@JsonSerializable()
class OnChainWalletList {
  final List<OnChainWallet> list;

  OnChainWalletList(this.list);

  factory OnChainWalletList.fromJson(Map<String, dynamic> json) => _$OnChainWalletListFromJson(json);
  Map<String, dynamic> toJson() => _$OnChainWalletListToJson(this);

  OnChainWallet? get(int accountId) {
    if (0 >= accountId || list.isEmpty) return null;
    return list.firstOrNullWhere((o) => o.accountId == accountId);
  }
}
