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
