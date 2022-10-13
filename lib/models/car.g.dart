// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarNft _$CarNftFromJson(Map<String, dynamic> json) => CarNft(
      json['id'] as int,
      json['image'] as String,
      json['location'] as int,
      (json['price'] as num).toDouble(),
      json['type'] as int,
      json['grade'] as int,
      (json['speedBase'] as num).toDouble(),
      (json['speed'] as num).toDouble(),
      (json['luckyBase'] as num).toDouble(),
      (json['lucky'] as num).toDouble(),
      (json['chargeBase'] as num).toDouble(),
      (json['charge'] as num).toDouble(),
      (json['repairBase'] as num).toDouble(),
      (json['repair'] as num).toDouble(),
      json['status'] as int,
      json['seal'] as String,
      json['socket1Color'] as int,
      json['socket2Color'] as int,
      json['socket3Color'] as int,
      json['socket4Color'] as int,
      json['durability'] as int,
      json['driven'] as int,
      json['mintingCount'] as int,
      json['level'] as int,
      json['startedLevelUp'] as bool,
      json['isSell'] as bool,
      DateTime.parse(json['levelUpAt'] as String),
    );

Map<String, dynamic> _$CarNftToJson(CarNft instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'location': instance.location,
      'price': instance.price,
      'type': instance.type,
      'grade': instance.grade,
      'speedBase': instance.speedBase,
      'speed': instance.speed,
      'luckyBase': instance.luckyBase,
      'lucky': instance.lucky,
      'chargeBase': instance.chargeBase,
      'charge': instance.charge,
      'repairBase': instance.repairBase,
      'repair': instance.repair,
      'status': instance.status,
      'seal': instance.seal,
      'socket1Color': instance.socket1Color,
      'socket2Color': instance.socket2Color,
      'socket3Color': instance.socket3Color,
      'socket4Color': instance.socket4Color,
      'durability': instance.durability,
      'driven': instance.driven,
      'mintingCount': instance.mintingCount,
      'level': instance.level,
      'startedLevelUp': instance.startedLevelUp,
      'isSell': instance.isSell,
      'levelUpAt': instance.levelUpAt.toIso8601String(),
    };

CarNftList _$CarNftListFromJson(Map<String, dynamic> json) => CarNftList(
      (json['list'] as List<dynamic>)
          .map((e) => CarNft.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CarNftListToJson(CarNftList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
