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
      (json['defaultXPerAmount'] as num).toDouble(),
      (json['defaultPerAmount'] as num).toDouble(),
      (json['defaultHavahAmount'] as num).toDouble(),
      (json['defaultOnChainXPerAmount'] as num).toDouble(),
      (json['defaultOnChainPerAmount'] as num).toDouble(),
      (json['defaultOnChainHavahAmount'] as num).toDouble(),
      (json['defaultOnChainUsdcAmount'] as num).toDouble(),
      (json['dailyLimitXPer'] as num).toDouble(),
      (json['dailyLimitPer'] as num).toDouble(),
      json['maxPower'] as int,
      json['maxPowerChargeSec'] as int,
      json['specialBoxInitialLifeTime'] as int,
      (json['specialBoxOpenBaseCost'] as num).toDouble(),
      (json['specialBoxOpenCostPerSec'] as num).toDouble(),
      json['levelUpStatusPoint'] as int,
      json['breedXPerCost'] as int,
      json['breedPerCost'] as int,
    );

Map<String, dynamic> _$InitialInfoToJson(InitialInfo instance) =>
    <String, dynamic>{
      'defaultXPerAmount': instance.defaultXPerAmount,
      'defaultPerAmount': instance.defaultPerAmount,
      'defaultHavahAmount': instance.defaultHavahAmount,
      'defaultOnChainXPerAmount': instance.defaultXPerAmount,
      'defaultOnChainPerAmount': instance.defaultPerAmount,
      'defaultOnChainHavahAmount': instance.defaultHavahAmount,
      'defaultOnChainUsdcAmount': instance.defaultHavahAmount,
      'dailyLimitXPer': instance.dailyLimitXPer,
      'dailyLimitPer': instance.dailyLimitPer,
      'maxPower': instance.maxPower,
      'maxPowerChargeSec': instance.maxPowerChargeSec,
      'specialBoxInitialLifeTime': instance.specialBoxInitialLifeTime,
      'specialBoxOpenBaseCost': instance.specialBoxOpenBaseCost,
      'specialBoxOpenCostPerSec': instance.specialBoxOpenCostPerSec,
      'levelUpStatusPoint': instance.levelUpStatusPoint,
      'breedXPerCost': instance.breedXPerCost,
      'breedPerCost': instance.breedPerCost,
    };
