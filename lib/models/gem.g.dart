// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gem.dart';

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

GemModelList _$GemModelListFromJson(Map<String, dynamic> json) => GemModelList(
      (json['list'] as List<dynamic>)
          .map((e) => GemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GemModelListToJson(GemModelList instance) =>
    <String, dynamic>{
      'list': instance.list,
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

GemNftList _$GemNftListFromJson(Map<String, dynamic> json) => GemNftList(
      (json['list'] as List<dynamic>)
          .map((e) => GemNft.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GemNftListToJson(GemNftList instance) =>
    <String, dynamic>{
      'list': instance.list,
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

GemMintingTableList _$GemMintingTableListFromJson(Map<String, dynamic> json) =>
    GemMintingTableList(
      (json['list'] as List<dynamic>)
          .map((e) => GemMintingTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GemMintingTableListToJson(
        GemMintingTableList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
