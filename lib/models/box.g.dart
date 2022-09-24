// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoxNft _$BoxNftFromJson(Map<String, dynamic> json) => BoxNft(
      json['id'] as int,
      json['grade'] as int,
      (json['price'] as num).toDouble(),
      json['carNftId'] as int,
      (json['carGradeList'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$BoxNftToJson(BoxNft instance) => <String, dynamic>{
      'id': instance.id,
      'grade': instance.grade,
      'price': instance.price,
      'carNftId': instance.carNftId,
      'carGradeList': instance.carGradeList,
    };

BoxNftList _$BoxNftListFromJson(Map<String, dynamic> json) => BoxNftList(
      (json['list'] as List<dynamic>)
          .map((e) => BoxNft.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BoxNftListToJson(BoxNftList instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
