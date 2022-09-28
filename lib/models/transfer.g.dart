// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferHistoryItem _$TransferHistoryItemFromJson(Map<String, dynamic> json) =>
    TransferHistoryItem(
      json['id'] as int,
      $enumDecode(_$TransferTypeEnumMap, json['transferType']),
      $enumDecode(_$CoinTypeEnumMap, json['coinType']),
      (json['amount'] as num).toDouble(),
      DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$TransferHistoryItemToJson(
        TransferHistoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transferType': _$TransferTypeEnumMap[instance.transferType]!,
      'coinType': _$CoinTypeEnumMap[instance.coinType]!,
      'amount': instance.amount,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$TransferTypeEnumMap = {
  TransferType.Sent: 'Sent',
  TransferType.Received: 'Received',
};

const _$CoinTypeEnumMap = {
  CoinType.Havah: 'Havah',
  CoinType.Per: 'Per',
  CoinType.XPer: 'XPer',
};

TransferHistoryList _$TransferHistoryListFromJson(Map<String, dynamic> json) =>
    TransferHistoryList(
      (json['list'] as List<dynamic>)
          .map((e) => TransferHistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TransferHistoryListToJson(
        TransferHistoryList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
