import 'dart:convert';
import 'package:flinq/flinq.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/services.dart";
import 'package:json_annotation/json_annotation.dart';
import "../types/string_type.dart";
part 'string_configuration.g.dart';

@JsonSerializable()
class StringUnit {
  final String code;
  final String msg;

  StringUnit(this.code, this.msg);

  factory StringUnit.fromJson(Map<String, dynamic> json) =>
      _$StringUnitFromJson(json);
  Map<String, dynamic> toJson() => _$StringUnitToJson(this);
}

@JsonSerializable()
class UiStringList {
  late final List<StringUnit> list;

  UiStringList(this.list);

  factory UiStringList.fromJson(Map<String, dynamic> json) =>
      _$UiStringListFromJson(json);
  Map<String, dynamic> toJson() => _$UiStringListToJson(this);

  String get(UiStringType code) {
    if (list.isEmpty) return "";

    StringUnit? unit = list.firstOrNullWhere((o) => o.code == describeEnum(code));
    return unit?.msg ?? "";
  }
}

class StringConfiguration {
  static final StringConfiguration _instance = StringConfiguration._internal();
  late UiStringList _uiStringList;

  factory StringConfiguration() {
    return _instance;
  }

  Future<void> _loadString() async {
    _uiStringList = UiStringList.fromJson(await json.decode(await rootBundle
        .loadString("assets/strings/string_configuration.yaml")));
  }

  StringConfiguration._internal() {
    _loadString();
  }

  String uiString(UiStringType code,
          [LanguageType language = LanguageType.eng]) =>
      _uiStringList.get(code);
}
