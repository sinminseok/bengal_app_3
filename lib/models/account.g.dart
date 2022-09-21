// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      json['id'] as int,
      json['password'] as String,
      json['email'] as String,
      json['name'] as String,
      json['twoFaKey'] as String,
      DateTime.parse(json['createdAt'] as String),
      DateTime.parse(json['updatedAt'] as String),
      json['enabled'] as bool,
      json['maxPower'] as int,
      json['dailyPower'] as int,
      DateTime.parse(json['timeToMaxPower'] as String),
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'email': instance.email,
      'name': instance.name,
      'twoFaKey': instance.twoFaKey,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'enabled': instance.enabled,
      'maxPower': instance.maxPower,
      'dailyPower': instance.dailyPower,
      'timeToMaxPower': instance.timeToMaxPower.toIso8601String(),
    };
