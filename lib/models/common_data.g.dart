// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonData _$CommonDataFromJson(Map<String, dynamic> json) => CommonData(
      InitialInfo.fromJson(json['initialInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommonDataToJson(CommonData instance) =>
    <String, dynamic>{
      'initialInfo': instance.initialInfo,
    };

InitialInfo _$InitialInfoFromJson(Map<String, dynamic> json) => InitialInfo(
      json['defaultXPerAmount'] as int,
      json['defaultPerAmount'] as int,
      json['defaultHvhAmount'] as int,
      json['dailyLimitXPer'] as int,
      json['dailyLimitPer'] as int,
      json['maxPower'] as int,
      json['maxPowerChargeSec'] as int,
      json['specialBoxInitialLifeTime'] as int,
      (json['specialBoxOpenBaseCost'] as num).toDouble(),
      (json['specialBoxOpenCostPerSec'] as num).toDouble(),
      json['carMaxDurability'] as int,
    );

Map<String, dynamic> _$InitialInfoToJson(InitialInfo instance) =>
    <String, dynamic>{
      'defaultXPerAmount': instance.defaultXPerAmount,
      'defaultPerAmount': instance.defaultPerAmount,
      'defaultHvhAmount': instance.defaultHvhAmount,
      'dailyLimitXPer': instance.dailyLimitXPer,
      'dailyLimitPer': instance.dailyLimitPer,
      'maxPower': instance.maxPower,
      'maxPowerChargeSec': instance.maxPowerChargeSec,
      'specialBoxInitialLifeTime': instance.specialBoxInitialLifeTime,
      'specialBoxOpenBaseCost': instance.specialBoxOpenBaseCost,
      'specialBoxOpenCostPerSec': instance.specialBoxOpenCostPerSec,
      'carMaxDurability': instance.carMaxDurability,
    };
