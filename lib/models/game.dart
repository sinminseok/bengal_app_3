import 'dart:ui';

import 'package:bengal_app/utils/datetime.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
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

enum SpecialGameSortType {
  highestXPer,
  lowestXPer,
  highestPer,
  lowestPer,
}

extension SpecialGameSortTypeExtension on SpecialGameSortType {
  String get getString {
    switch (this) {
      case SpecialGameSortType.highestXPer:
        return "Highest XPer";
      case SpecialGameSortType.lowestXPer:
        return "Lowest XPer";
      case SpecialGameSortType.highestPer:
        return "Highest Per";
      case SpecialGameSortType.lowestPer:
        return "Lowest Per";
      default:
        return "";
    }
  }
}

extension SpecialGameSortStringExtension on String {
  SpecialGameSortType get getSpecialGameSortType {
    switch (this) {
      case "Highest XPer":
        return SpecialGameSortType.highestXPer;
      case "Lowest XPer":
        return SpecialGameSortType.lowestXPer;
      case "Highest Per":
        return SpecialGameSortType.highestPer;
      case "Lowest Per":
        return SpecialGameSortType.lowestPer;
      default:
        return SpecialGameSortType.highestXPer;
    }
  }
}

enum RecommendGameSortType {
  highestXPer,
  lowestXPer,
}

extension RecommendGameSortTypeExtension on RecommendGameSortType {
  String get getString {
    switch (this) {
      case RecommendGameSortType.highestXPer:
        return "Highest XPer";
      case RecommendGameSortType.lowestXPer:
        return "Lowest XPer";
      default:
        return "";
    }
  }
}

extension RecommendGameSortStringExtension on String {
  RecommendGameSortType get getRecommendGameSortType {
    switch (this) {
      case "Highest XPer":
        return RecommendGameSortType.highestXPer;
      case "Lowest XPer":
        return RecommendGameSortType.lowestXPer;
      default:
        return RecommendGameSortType.highestXPer;
    }
  }
}

@JsonSerializable()
class GameInfoList {
  final List<GameInfo> list;

  GameInfoList(this.list);

  factory GameInfoList.fromJson(Map<String, dynamic> json) => _$GameInfoListFromJson(json);
  Map<String, dynamic> toJson() => _$GameInfoListToJson(this);

  void removeGame(int gameId) {
    list.removeWhere((o) => o.id == gameId);
  }

  List<GameInfo> getCategoryGameList(int category) {
    return list.whereList((o) => o.category == category);
  }

  void sortSpecialGame(SpecialGameSortType sortType) {
    switch (sortType) {
      case SpecialGameSortType.highestXPer:
        list.sort((a, b) => b.xPerPerPower.compareTo(a.xPerPerPower));
        break;
      case SpecialGameSortType.lowestXPer:
        list.sort((a, b) => a.xPerPerPower.compareTo(b.xPerPerPower));
        break;
      case SpecialGameSortType.highestPer:
        list.sort((a, b) => b.perPerPower.compareTo(a.perPerPower));
        break;
      case SpecialGameSortType.lowestPer:
        list.sort((a, b) => a.perPerPower.compareTo(b.perPerPower));
        break;
      default:
        break;
    }
  }

  void sortRecommendedGame(RecommendGameSortType sortType) {
    switch (sortType) {
      case RecommendGameSortType.highestXPer:
        list.sort((a, b) => b.xPerPerPower.compareTo(a.xPerPerPower));
        break;
      case RecommendGameSortType.lowestXPer:
        list.sort((a, b) => a.xPerPerPower.compareTo(b.xPerPerPower));
        break;
      default:
        break;
    }
  }

  static List<String> getSpecialGameSortItems() {
    return SpecialGameSortType.values.map((e) => e.getString).toList();
  }

  static List<String> getRecommendedSortItems() {
    return RecommendGameSortType.values.map((e) => e.getString).toList();
  }

  static List<String> getNormalSortItems() {
    return RecommendGameSortType.values.map((e) => e.getString).toList();
  }
}

@JsonSerializable()
class MiningBox {
  late int id = 0;
  late int nftId = 0;
  final DateTime createdAt;
  late Duration limitDuration;
  late double baseCost = 30.0;
  late double boostCostPerSec = 0.01;

  MiningBox(
      this.id,
      this.nftId,
      this.createdAt,
      this.limitDuration,
      this.baseCost,
      this.boostCostPerSec,
      );

  factory MiningBox.fromJson(Map<String, dynamic> json) => _$MiningBoxFromJson(json);
  Map<String, dynamic> toJson() => _$MiningBoxToJson(this);

  Duration getRemainDuration() {
    return createdAt.add(limitDuration).difference(DateTime.now());
  }

  double getBoostCost() => getRemainDuration().inSeconds * boostCostPerSec;
  double getTotalOpenCost() => getBoostCost() + baseCost;
}

@JsonSerializable()
class MiningBoxList {
  final List<MiningBox> list;

  MiningBoxList(this.list);

  factory MiningBoxList.fromJson(Map<String, dynamic> json) => _$MiningBoxListFromJson(json);
  Map<String, dynamic> toJson() => _$MiningBoxListToJson(this);

  MiningBox mining(
      int id,
      Duration limitDuration,
      double baseCost,
      double boostCostPerSec) {
    if (4 <= list.length) {
      list.removeLast();
    }

    var miningBox = MiningBox(
        id,
        0,
        DateTime.now(),
        limitDuration,
        baseCost,
        boostCostPerSec
    );
    list.add(miningBox);

    return miningBox;
  }

}

@JsonSerializable()
class MiningResult {
  final int id;
  final int gameId;
  late double miningXPer;
  late double miningPer;
  late int miningBoxId;
  final DateTime createdAt;
  late DateTime updatedAt;

  MiningResult(
      this.id,
      this.gameId,
      this.miningXPer,
      this.miningPer,
      this.miningBoxId,
      this.createdAt,
      this.updatedAt,
      );

  factory MiningResult.fromJson(Map<String, dynamic> json) => _$MiningResultFromJson(json);
  Map<String, dynamic> toJson() => _$MiningResultToJson(this);

  Duration getPlayTime() => updatedAt.difference(createdAt);

  void miningEnd() => updatedAt = DateTime.now();
}

@JsonSerializable()
class MiningResultList {
  final List<MiningResult> list;

  MiningResultList(this.list);

  factory MiningResultList.fromJson(Map<String, dynamic> json) => _$MiningResultListFromJson(json);
  Map<String, dynamic> toJson() => _$MiningResultListToJson(this);

  MiningResult lastMiningResult() => list.last;

  MiningResult? getMiningResultToId(int id) => list.firstOrNullWhere((o) => o.id == id);

  double getTodayMiningPerAmount(int gameId) {
    var gameList = list.whereList((o) => o.gameId == gameId);
    var todayList = gameList.whereList((o) => o.createdAt.isToday());
    return todayList.sumBy((o) => o.miningPer);
  }
}
