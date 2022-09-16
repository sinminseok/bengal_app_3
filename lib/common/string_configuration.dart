import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';
import '../types/string_type.dart';
import 'config_base.dart';

class StringConfiguration {
  static final StringConfiguration _instance = StringConfiguration._internal();
  late UiStringList _uiStringList = UiStringList();

  factory StringConfiguration() {
    return _instance;
  }

  Future<void> _loadString() async {
    var value =
        await rootBundle.loadString('assets/strings/string_configuration.yaml');

    _uiStringList = UiStringList.fromJson(loadYaml(value));
  }

  StringConfiguration._internal() {
    _loadString();
  }

  String uiString(UiStringType code,
          [LanguageType language = LanguageType.eng]) =>
      _uiStringList.get(code);
}
