// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameInfo _$GameInfoFromJson(Map<String, dynamic> json) => GameInfo(
      json['id'] as int,
      json['title'] as String,
      json['category'] as int,
      (json['perPerDay'] as num).toDouble(),
      (json['perPerPower'] as num).toDouble(),
      (json['xPerPerDay'] as num).toDouble(),
      (json['xPerPerPower'] as num).toDouble(),
      json['needCarGrade'] as int,
      json['needCarType'] as int,
      json['minCarLevel'] as int,
      (json['depositPer'] as num).toDouble(),
      DateTime.parse(json['limitAt'] as String),
      json['packageName'] as String,
    );

Map<String, dynamic> _$GameInfoToJson(GameInfo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'perPerDay': instance.perPerDay,
      'perPerPower': instance.perPerPower,
      'xPerPerDay': instance.xPerPerDay,
      'xPerPerPower': instance.xPerPerPower,
      'needCarGrade': instance.needCarGrade,
      'needCarType': instance.needCarType,
      'minCarLevel': instance.minCarLevel,
      'depositPer': instance.depositPer,
      'limitAt': instance.limitAt.toIso8601String(),
      'packageName': instance.packageName,
    };

GameInfoList _$GameInfoListFromJson(Map<String, dynamic> json) => GameInfoList(
      (json['list'] as List<dynamic>)
          .map((e) => GameInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameInfoListToJson(GameInfoList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

MiningBox _$MiningBoxFromJson(Map<String, dynamic> json) => MiningBox(
      json['id'] as int,
      json['nftId'] as int,
      DateTime.parse(json['createdAt'] as String),
      Duration(microseconds: json['limitDuration'] as int),
      (json['baseCost'] as num).toDouble(),
      (json['boostCostPerSec'] as num).toDouble(),
    );

Map<String, dynamic> _$MiningBoxToJson(MiningBox instance) => <String, dynamic>{
      'id': instance.id,
      'nftId': instance.nftId,
      'createdAt': instance.createdAt.toIso8601String(),
      'limitDuration': instance.limitDuration.inMicroseconds,
      'baseCost': instance.baseCost,
      'boostCostPerSec': instance.boostCostPerSec,
    };

MiningBoxList _$MiningBoxListFromJson(Map<String, dynamic> json) =>
    MiningBoxList(
      (json['list'] as List<dynamic>)
          .map((e) => MiningBox.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MiningBoxListToJson(MiningBoxList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

MiningResult _$MiningResultFromJson(Map<String, dynamic> json) => MiningResult(
      json['id'] as int,
      json['gameId'] as int,
      (json['miningXPer'] as num).toDouble(),
      (json['miningPer'] as num).toDouble(),
      json['miningBoxId'] as int,
      DateTime.parse(json['createdAt'] as String),
      DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$MiningResultToJson(MiningResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gameId': instance.gameId,
      'miningXPer': instance.miningXPer,
      'miningPer': instance.miningPer,
      'miningBoxId': instance.miningBoxId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

MiningResultList _$MiningResultListFromJson(Map<String, dynamic> json) =>
    MiningResultList(
      (json['list'] as List<dynamic>)
          .map((e) => MiningResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MiningResultListToJson(MiningResultList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
