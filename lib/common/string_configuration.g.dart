// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StringUnit _$StringUnitFromJson(Map<String, dynamic> json) => StringUnit(
      json['code'] as String,
      json['msg'] as String,
    );

Map<String, dynamic> _$StringUnitToJson(StringUnit instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
    };

UiStringList _$UiStringListFromJson(Map<String, dynamic> json) => UiStringList(
      (json['list'] as List<dynamic>)
          .map((e) => StringUnit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UiStringListToJson(UiStringList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
