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
      json['enabled'] as bool? ?? true,
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
