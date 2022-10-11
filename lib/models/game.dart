import 'dart:ui';

import 'package:bengal_app/utils/dataType.dart';
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
  late String packageName;
  late bool added;

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
      this.added,
      );

  factory GameInfo.fromJson(Map<String, dynamic> json) => _$GameInfoFromJson(json);
  Map<String, dynamic> toJson() => _$GameInfoToJson(this);

  bool acceptNoCarUser() {
    if (1 >= needCarGrade && 1 >= minCarLevel && 0 == needCarType) return true;
    return false;
  }

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
  String xPerPerPowerCutString() {
    return "+$xPerPerPower XPER For";
  }

  String perPerPowerString() {
    if (1 != category) return "";
    return "+$perPerPower PER For 1 Power";
  }

  String categoryNCarLevelString() => "${categoryString()}  Lv$minCarLevel";
  String gradeNCarLevelString() => "${carGradeString()}  Lv$minCarLevel";

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

  bool addGame(GameInfo game) {
    var f = list.firstOrNullWhere((o) => o.packageName == game.packageName);
    if (null != f) return false;

    list.add(game);
    return true;
  }

  void removeGame(GameInfo game) =>
      list.removeWhere((o) => o.packageName == game.packageName);

  List<GameInfo> getCategoryGameList(int category) =>
      list.whereList((o) => o.category == category);

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
  late int totalPlaySec = 0;
  late int remainSec = 0;

  late bool doMining = false;
  late int timeStamp = 0;

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

  void miningEnd() {
    print(">>>>>>>>>> miningEnd");
    updatedAt = DateTime.now();
    doMining = false;
  }

  int mining(int timeStamp, double per, double xper) {
    if (!doMining) return 0;
    var curTime = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    var gap = curTime.difference(updatedAt);
    totalPlaySec += gap.inSeconds;
    var curSec = remainSec + gap.inSeconds;
    if (60 > curSec) {
      remainSec = curSec;
      return 0;
    }

    int min = curSec ~/ 60;
    remainSec = curSec % 60;
    miningXPer += (xper * min);
    miningPer += (per * min);
    updatedAt = curTime;
    print(">>>>>>>>>> mining totalPlaySec($totalPlaySec) / min($min) / remainSec($remainSec)");
    return min;
  }

  void miningPlay(int timeStamp) {
    print(">>>>>>>>>> miningPlay");
    if (0 == timeStamp) return;
    updatedAt = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    doMining = true;
  }

  void miningPause(int timeStamp) {
    print(">>>>>>>>>> miningPause");
    doMining = false;
  }

  Duration getPlayTime() => Duration(seconds: totalPlaySec);

  String getPlayTimeString() {
    var duration = Duration(seconds: totalPlaySec);
    String hours = duration.inHours.toString().padLeft(2, '0');
    String minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    String seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return "$hours:$minutes:$seconds";
  }
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
    if (list.isEmpty) return 0.0;
    var gameList = list.whereList((o) => o.gameId == gameId);
    if (gameList.isEmpty) return 0.0;
    var todayList = gameList.whereList((o) => o.createdAt.isToday());
    if (todayList.isEmpty) return 0.0;
    return todayList.fold(0.0, (previous, current) => previous + current.miningPer);
  }

  double getTodayMiningXPerAmount(int gameId) {
    if (list.isEmpty) return 0.0;
    var gameList = list.whereList((o) => o.gameId == gameId);
    if (gameList.isEmpty) return 0.0;
    var todayList = gameList.whereList((o) => o.createdAt.isToday());
    if (todayList.isEmpty) return 0.0;
    return todayList.fold(0.0, (previous, current) => previous + current.miningXPer);
  }

  double getTodayMiningTotalPerAmount() {
    if (list.isEmpty) return 0.0;
    var todayList = list.whereList((o) => o.createdAt.isToday());
    if (todayList.isEmpty) return 0.0;
    return todayList.fold(0.0, (previous, current) => previous + current.miningPer);
  }

  double getTodayMiningTotalXPerAmount() {
    if (list.isEmpty) return 0.0;
    var todayList = list.whereList((o) => o.createdAt.isToday());
    if (todayList.isEmpty) return 0.0;
    return todayList.fold(0.0, (previous, current) => previous + current.miningXPer);
  }
}
