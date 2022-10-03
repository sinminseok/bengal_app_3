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
      json['carMaxDurability'] as int,
      json['levelUpStatusPoint'] as int,
      (json['breedXPerCost'] as num).toDouble(),
      (json['breedPerCost'] as num).toDouble(),
      (json['repairCost'] as num).toDouble(),
      json['levelUpTime'] as int,
      json['levelUpCost'] as int,
      json['specialBoxEarnRate'] as int,
      json['decreaseDurability'] as int,
      json['increaseMileage'] as int,
      json['pendingDelayTime'] as int,
      json['tokenValue01'] as int,
      json['tokenValue02'] as int,
      json['tokenValue03'] as int,
      json['tokenValue04'] as int,
    );

Map<String, dynamic> _$InitialInfoToJson(InitialInfo instance) =>
    <String, dynamic>{
      'defaultXPerAmount': instance.defaultXPerAmount,
      'defaultPerAmount': instance.defaultPerAmount,
      'defaultHavahAmount': instance.defaultHavahAmount,
      'defaultOnChainXPerAmount': instance.defaultOnChainXPerAmount,
      'defaultOnChainPerAmount': instance.defaultOnChainPerAmount,
      'defaultOnChainHavahAmount': instance.defaultOnChainHavahAmount,
      'defaultOnChainUsdcAmount': instance.defaultOnChainUsdcAmount,
      'dailyLimitXPer': instance.dailyLimitXPer,
      'dailyLimitPer': instance.dailyLimitPer,
      'maxPower': instance.maxPower,
      'maxPowerChargeSec': instance.maxPowerChargeSec,
      'specialBoxInitialLifeTime': instance.specialBoxInitialLifeTime,
      'specialBoxOpenBaseCost': instance.specialBoxOpenBaseCost,
      'specialBoxOpenCostPerSec': instance.specialBoxOpenCostPerSec,
      'carMaxDurability': instance.carMaxDurability,
      'levelUpStatusPoint': instance.levelUpStatusPoint,
      'breedXPerCost': instance.breedXPerCost,
      'breedPerCost': instance.breedPerCost,
      'repairCost': instance.repairCost,
      'levelUpTime': instance.levelUpTime,
      'levelUpCost': instance.levelUpCost,
      'specialBoxEarnRate': instance.specialBoxEarnRate,
      'decreaseDurability': instance.decreaseDurability,
      'increaseMileage': instance.increaseMileage,
      'pendingDelayTime': instance.pendingDelayTime,
      'tokenValue01': instance.tokenValue01,
      'tokenValue02': instance.tokenValue02,
      'tokenValue03': instance.tokenValue03,
      'tokenValue04': instance.tokenValue04,
    };
