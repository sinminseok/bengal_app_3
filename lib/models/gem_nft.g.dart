// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gem_nft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GemModel _$GemModelFromJson(Map<String, dynamic> json) => GemModel(
      json['id'] as int,
      json['category'] as int,
      (json['price'] as num).toDouble(),
      json['mintingTableId'] as int,
    );

Map<String, dynamic> _$GemModelToJson(GemModel instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'price': instance.price,
      'mintingTableId': instance.mintingTableId,
    };

GemNft _$GemNftFromJson(Map<String, dynamic> json) => GemNft(
      json['id'] as int,
      json['modelId'] as int,
      (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$GemNftToJson(GemNft instance) => <String, dynamic>{
      'id': instance.id,
      'modelId': instance.modelId,
      'price': instance.price,
    };

GemMintingTable _$GemMintingTableFromJson(Map<String, dynamic> json) =>
    GemMintingTable(
      json['id'] as int,
      (json['carList'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$GemMintingTableToJson(GemMintingTable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carList': instance.carList,
    };
