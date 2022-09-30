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
      json['power'] as int,
      (json['todayMiningPer'] as num?)?.toDouble() ?? 0.0,
      (json['todayMiningXPer'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'email': instance.email,
      'name': instance.name,
      'power': instance.power,
      'todayMiningPer': instance.todayMiningPer,
      'todayMiningXPer': instance.todayMiningXPer,
    };

AccountList _$AccountListFromJson(Map<String, dynamic> json) => AccountList(
      (json['list'] as List<dynamic>)
          .map((e) => Account.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AccountListToJson(AccountList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
