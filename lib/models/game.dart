import 'dart:ui';

import 'package:flinq/flinq.dart';
import 'package:json_annotation/json_annotation.dart';
part 'game.g.dart';

@JsonSerializable()
class GameInfo {
  final int id;
  final String title;
  final int category;
  final double perPerDay;
  final double perPerPower;
  final double xPerPerDay;
  final double xPerPerPower;
  final int needCarGrade;
  final int needCarType;
  final int minCarLevel;
  final double depositPer;
  final DateTime limitAt;
  final String packageName;

  GameInfo(
      this.id,
      this.title,
      this.category,
      this.perPerDay,
      this.perPerPower,
      this.xPerPerDay,
      this.xPerPerPower,
      this.needCarGrade,
      this.needCarType,
      this.minCarLevel,
      this.depositPer,
      this.limitAt,
      this.packageName,
      );

  factory GameInfo.fromJson(Map<String, dynamic> json) => _$GameInfoFromJson(json);
  Map<String, dynamic> toJson() => _$GameInfoToJson(this);

  String titleString() {
    if (12 > title.length) return title;
    return "${title.substring(0, 11)}...";
  }

  String limitAtString() {
    if (1 != category) return "";
    return "Until ${limitAt.day}/${limitAt.month}/${limitAt.year}";
  }

  String xPerPerPowerString() {
    return "+$xPerPerPower XPER For 1 Power";
  }

  String perPerPowerString() {
    if (1 != category) return "";
    return "+$perPerPower PER For 1 Power";
  }

  String categoryNCarLevelString() {
    if (1 != category) return "";
    return "${categoryString()}  Lv$minCarLevel";
  }

  String categoryString() {
    switch (category) {
      case 1: return "Special";
      case 2: return "Recommended";
      case 3: return "Normal";
      default: return "Normal";
    }
  }

  String carGradeString() {
    switch (needCarGrade) {
      case 1: return "Normal";
      case 2: return "Rare";
      case 3: return "Elite";
      case 4: return "Epic";
      case 5: return "Ultimate";
      default: return "Normal";
    }
  }

  String perPerDayString() {
    if (1 != category) return "";
    return "(Max$perPerDay / 1 Day)";
  }

  Color carColorToType(int carType) {
    if (0 == needCarType) return const Color(0xFF746F7B);
    return needCarType == carType ? const Color(0xFF746F7B) : const Color(0xFFE4E4E4);
  }

  String gameIconAsset() {
    return "assets/images/game/icons/game$id.png";
  }
}

@JsonSerializable()
class GameInfoList {
  final List<GameInfo> list;

  GameInfoList(this.list);

  factory GameInfoList.fromJson(Map<String, dynamic> json) => _$GameInfoListFromJson(json);
  Map<String, dynamic> toJson() => _$GameInfoListToJson(this);

  List<GameInfo> getCategoryGameList(int category) {
    return list.whereList((o) => o.category == category);
  }
}

@JsonSerializable()
class MiningBox {
  late int id = 0;
  late int nftId = 0;
  final DateTime createdAt;
  late Duration limitDuration;
  late double baseCost = 0.0;
  late double boostCost = 0.0;

  MiningBox(
      this.id,
      this.nftId,
      this.createdAt,
      this.limitDuration,
      this.baseCost,
      this.boostCost,
      );

  factory MiningBox.fromJson(Map<String, dynamic> json) => _$MiningBoxFromJson(json);
  Map<String, dynamic> toJson() => _$MiningBoxToJson(this);

  Duration getRemainDuration() {
    return createdAt.add(limitDuration).difference(DateTime.now());
  }
}

@JsonSerializable()
class MiningBoxList {
  final List<MiningBox> list;

  MiningBoxList(this.list);

  factory MiningBoxList.fromJson(Map<String, dynamic> json) => _$MiningBoxListFromJson(json);
  Map<String, dynamic> toJson() => _$MiningBoxListToJson(this);

}
