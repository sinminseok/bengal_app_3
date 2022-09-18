import "package:flutter/foundation.dart";
import "package:yaml/yaml.dart";
import "../types/string_type.dart";

class ConfigBase {
  int Version = 0;
}

class StringUnit {
  final String Code;
  final String Msg;

  StringUnit(this.Code, this.Msg);
}

class UiStringList extends ConfigBase {
  List<StringUnit> Ui = [];

  static UiStringList fromJson(YamlMap map) {
    var ret = UiStringList();
    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("Ui")) {
      map["Ui"].forEach((o) => ret.Ui.add(StringUnit(o["Code"], o["Msg"])));
    }

    return ret;
  }

  String get(UiStringType code) {
    if (Ui.isEmpty) return "";

    StringUnit unit =
        Ui.firstWhere((o) => o.Code == describeEnum(code), orElse: () {
      return StringUnit(describeEnum(UiStringType.none), "");
    });

    return unit.Msg;
  }
}
