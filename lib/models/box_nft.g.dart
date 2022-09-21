// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_nft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxModel _$BoxModelFromJson(Map<String, dynamic> json) => BoxModel(
      json['id'] as int,
      json['category'] as int,
      (json['price'] as num).toDouble(),
      json['mintingTableId'] as int,
    );

Map<String, dynamic> _$BoxModelToJson(BoxModel instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'price': instance.price,
      'mintingTableId': instance.mintingTableId,
    };

BoxNft _$BoxNftFromJson(Map<String, dynamic> json) => BoxNft(
      json['id'] as int,
      json['modelId'] as int,
      (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$BoxNftToJson(BoxNft instance) => <String, dynamic>{
      'id': instance.id,
      'modelId': instance.modelId,
      'price': instance.price,
    };

BoxMintingTable _$BoxMintingTableFromJson(Map<String, dynamic> json) =>
    BoxMintingTable(
      json['id'] as int,
      (json['carList'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$BoxMintingTableToJson(BoxMintingTable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carList': instance.carList,
    };
