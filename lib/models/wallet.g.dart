// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wallet _$WalletFromJson(Map<String, dynamic> json) => Wallet(
      json['id'] as int,
      json['accountId'] as int,
      (json['balancePer'] as num).toDouble(),
      (json['balanceXPer'] as num).toDouble(),
      (json['balanceHavah'] as num).toDouble(),
      DateTime.parse(json['createdAt'] as String),
      DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WalletToJson(Wallet instance) => <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'balancePer': instance.balancePer,
      'balanceXPer': instance.balanceXPer,
      'balanceHavah': instance.balanceHavah,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

WalletList _$WalletListFromJson(Map<String, dynamic> json) => WalletList(
      (json['list'] as List<dynamic>)
          .map((e) => Wallet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WalletListToJson(WalletList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

OnChainWallet _$OnChainWalletFromJson(Map<String, dynamic> json) => OnChainWallet(
  json['id'] as int,
  json['accountId'] as int,
  (json['balancePer'] as num).toDouble(),
  (json['balanceXPer'] as num).toDouble(),
  (json['balanceHavah'] as num).toDouble(),
  (json['balanceUsdc'] as num).toDouble(),
  DateTime.parse(json['createdAt'] as String),
  DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$OnChainWalletToJson(OnChainWallet instance) => <String, dynamic>{
  'id': instance.id,
  'accountId': instance.accountId,
  'balancePer': instance.balancePer,
  'balanceXPer': instance.balanceXPer,
  'balanceHavah': instance.balanceHavah,
  'balanceUsdc': instance.balanceUsdc,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

OnChainWalletList _$OnChainWalletListFromJson(Map<String, dynamic> json) => OnChainWalletList(
  (json['list'] as List<dynamic>)
      .map((e) => OnChainWallet.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OnChainWalletListToJson(OnChainWalletList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
