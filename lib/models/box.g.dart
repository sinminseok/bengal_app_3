// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box.dart';

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

BoxModelList _$BoxModelListFromJson(Map<String, dynamic> json) => BoxModelList(
      (json['list'] as List<dynamic>)
          .map((e) => BoxModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BoxModelListToJson(BoxModelList instance) =>
    <String, dynamic>{
      'list': instance.list,
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

BoxNftList _$BoxNftListFromJson(Map<String, dynamic> json) => BoxNftList(
      (json['list'] as List<dynamic>)
          .map((e) => BoxNft.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BoxNftListToJson(BoxNftList instance) =>
    <String, dynamic>{
      'list': instance.list,
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

BoxMintingTableList _$BoxMintingTableListFromJson(Map<String, dynamic> json) =>
    BoxMintingTableList(
      (json['list'] as List<dynamic>)
          .map((e) => BoxMintingTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BoxMintingTableListToJson(
        BoxMintingTableList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
