// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_nft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarModel _$CarModelFromJson(Map<String, dynamic> json) => CarModel(
      json['id'] as int,
      json['vehicleType'] as String,
      json['model'] as int,
      json['grade'] as int,
      (json['price'] as num).toDouble(),
      json['speed'] as int,
      json['lucky'] as int,
      json['charge'] as int,
      json['durability'] as int,
      json['driven'] as int,
      json['repair'] as int,
      json['gemSockets'] as int,
      json['mintingCount'] as int,
      json['mintedFormTableId'] as int,
    );

Map<String, dynamic> _$CarModelToJson(CarModel instance) => <String, dynamic>{
      'id': instance.id,
      'vehicleType': instance.vehicleType,
      'model': instance.model,
      'grade': instance.grade,
      'price': instance.price,
      'speed': instance.speed,
      'lucky': instance.lucky,
      'charge': instance.charge,
      'durability': instance.durability,
      'driven': instance.driven,
      'repair': instance.repair,
      'gemSockets': instance.gemSockets,
      'mintingCount': instance.mintingCount,
      'mintedFormTableId': instance.mintedFormTableId,
    };

CarNft _$CarNftFromJson(Map<String, dynamic> json) => CarNft(
      json['id'] as int,
      json['modelId'] as int,
      (json['price'] as num).toDouble(),
      (json['condition'] as num).toDouble(),
      json['level'] as int,
      (json['curDurability'] as num).toDouble(),
      (json['curDriven'] as num).toDouble(),
      (json['curRepair'] as num).toDouble(),
      json['remainGemSockets'] as int,
      json['remainMintingCount'] as int,
      json['valid'] as bool,
      DateTime.parse(json['burnedAt'] as String),
    );

Map<String, dynamic> _$CarNftToJson(CarNft instance) => <String, dynamic>{
      'id': instance.id,
      'modelId': instance.modelId,
      'price': instance.price,
      'condition': instance.condition,
      'level': instance.level,
      'curDurability': instance.curDurability,
      'curDriven': instance.curDriven,
      'curRepair': instance.curRepair,
      'remainGemSockets': instance.remainGemSockets,
      'remainMintingCount': instance.remainMintingCount,
      'valid': instance.valid,
      'burnedAt': instance.burnedAt.toIso8601String(),
    };

CarMintingTable _$CarMintingTableFromJson(Map<String, dynamic> json) =>
    CarMintingTable(
      json['id'] as int,
      (json['mintedCarList'] as List<dynamic>).map((e) => e as int).toList(),
      (json['mintCarList'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$CarMintingTableToJson(CarMintingTable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mintedCarList': instance.mintedCarList,
      'mintCarList': instance.mintCarList,
    };
