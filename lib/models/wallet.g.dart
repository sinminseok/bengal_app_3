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
      DateTime.parse(json['createdAt'] as String),
      DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$WalletToJson(Wallet instance) => <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'balancePer': instance.balancePer,
      'balanceXPer': instance.balanceXPer,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
