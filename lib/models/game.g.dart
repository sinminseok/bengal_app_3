// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameInfo _$GameInfoFromJson(Map<String, dynamic> json) => GameInfo(
      json['id'] as int,
      json['title'] as String,
    );

Map<String, dynamic> _$GameInfoToJson(GameInfo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
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

GameReward _$GameRewardFromJson(Map<String, dynamic> json) => GameReward(
      json['id'] as int,
      (json['perPerDay'] as num).toDouble(),
      (json['perPerPower'] as num).toDouble(),
      (json['xPerPerDay'] as num).toDouble(),
      (json['xPerPerPower'] as num).toDouble(),
      (json['carModelList'] as List<dynamic>).map((e) => e as int).toList(),
      json['grade'] as int,
      json['level'] as int,
      DateTime.parse(json['dueTime'] as String),
    );

Map<String, dynamic> _$GameRewardToJson(GameReward instance) =>
    <String, dynamic>{
      'id': instance.id,
      'perPerDay': instance.perPerDay,
      'perPerPower': instance.perPerPower,
      'xPerPerDay': instance.xPerPerDay,
      'xPerPerPower': instance.xPerPerPower,
      'carModelList': instance.carModelList,
      'grade': instance.grade,
      'level': instance.level,
      'dueTime': instance.dueTime.toIso8601String(),
    };

GameRewardList _$GameRewardListFromJson(Map<String, dynamic> json) =>
    GameRewardList(
      (json['list'] as List<dynamic>)
          .map((e) => GameReward.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameRewardListToJson(GameRewardList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

GameRewardTable _$GameRewardTableFromJson(Map<String, dynamic> json) =>
    GameRewardTable(
      json['game'] as int,
      json['reward'] as int,
    );

Map<String, dynamic> _$GameRewardTableToJson(GameRewardTable instance) =>
    <String, dynamic>{
      'game': instance.game,
      'reward': instance.reward,
    };

GameRewardTableList _$GameRewardTableListFromJson(Map<String, dynamic> json) =>
    GameRewardTableList(
      (json['list'] as List<dynamic>)
          .map((e) => GameRewardTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameRewardTableListToJson(
        GameRewardTableList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
