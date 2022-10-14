import 'dart:ui';

import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'common_data.dart';
import 'game.dart';
import '../../types/constants.dart';
part 'car.g.dart';

@JsonSerializable()
class CarNft {
  final int id;
  final String image;
  late int location;
  late double price;
  final int type;
  final int grade;
  final double speedBase;
  late double speed;
  final double luckyBase;
  late double lucky;
  final double chargeBase;
  late double charge;
  final double repairBase;
  late double repair;
  late int status;
  final String seal;
  final int socket1Color;
  final int socket2Color;
  final int socket3Color;
  final int socket4Color;
  late int durability;
  late int driven;
  late int mintingCount;
  late int level;
  late bool startedLevelUp;
  late bool isSell;
  late DateTime levelUpAt;

  CarNft(
      this.id,
      this.image,
      this.location,
      this.price,
      this.type,
      this.grade,
      this.speedBase,
      this.speed,
      this.luckyBase,
      this.lucky,
      this.chargeBase,
      this.charge,
      this.repairBase,
      this.repair,
      this.status,
      this.seal,
      this.socket1Color,
      this.socket2Color,
      this.socket3Color,
      this.socket4Color,
      this.durability,
      this.driven,
      this.mintingCount,
      this.level,
      this.startedLevelUp,
      this.isSell,
      this.levelUpAt,
      );

  factory CarNft.fromJson(Map<String, dynamic> json) => _$CarNftFromJson(json);
  Map<String, dynamic> toJson() => _$CarNftToJson(this);

  String getCarTypeString() {
    switch (type) {
      case 1: return "SUV";
      case 2: return "Off Road";
      case 3: return "Sedan";
      case 4: return "Sports";
      default: return "Sedan";
    }
  }

  String getCarGradeString() {
    switch (grade) {
      case 1: return "normal";
      case 2: return "rare";
      case 3: return "elite";
      case 4: return "epic";
      case 5: return "ultimate";
      default: return "normal";
    }
  }

  String getCarCardTitle() => "${getCarTypeString()}/${getCarGradeString().toUpperCase()}";

  bool isValidBuy(double balance) => balance > price;

  String getAssetImage() => "assets/images/common/cars/$image.png";

  bool isPossibleMining(InitialInfo initialInfo, GameInfo game) {
    if (initialInfo.decreaseDurability > durability) return false;
    if (initialInfo.carMaxMileage - initialInfo.increaseMileage < driven) return false;
    if (game.needCarGrade > grade) return false;
    if (game.minCarLevel > level) return false;
    if (0 != game.needCarType && type != game.needCarType) return false;
    return true;
  }

  void mining(int playTime) {
    durability -= StorageController().commonData.initialInfo.decreaseDurability;
    driven += StorageController().commonData.initialInfo.increaseMileage;
  }

  void startLevelUp() {
    var needSec = level * StorageController().commonData.initialInfo.levelUpTime;
    levelUpAt = DateTime.now().add(Duration(seconds: needSec));
    startedLevelUp = true;
  }

  void updateLevelUp([bool force = false]) {
    if (!startedLevelUp) return;
    if (force) {
      levelUpAt = DateTime.now();
    }
    if (0 < levelUpAt.compareTo(DateTime.now())) return;
    level += 1;
    status += StorageController().commonData.initialInfo.levelUpStatusPoint;
    startedLevelUp = false;
  }

  String getLevelUpDurationString() {
    var needSec = level * StorageController().commonData.initialInfo.levelUpTime;
    var next = Duration(seconds: needSec);
    var ret = "";
    if (0 < next.inHours){
      ret = "${next.inHours.toString()}h";
    }
    var sec = next.inSeconds.remainder(60);
    var min = next.inMinutes.remainder(60);
    if (0 < sec) min++;

    if (0 < min) {
      if (ret.isNotEmpty) ret += " ";
      ret += "${min.toString()}m";
    }
    return ret;
  }

  String getLevelUpRemainString() {
    var remain = levelUpAt.difference(DateTime.now());
    String hours = remain.inHours.toString().padLeft(2, '0');
    String minutes = remain.inMinutes.remainder(60).toString().padLeft(2, '0');
    String seconds = remain.inSeconds.remainder(60).toString().padLeft(2, '0');
    return "$hours:$minutes:$seconds";
  }

  int levelUpPercent() {
    var needSec = level * StorageController().commonData.initialInfo.levelUpTime;
    var whole = Duration(seconds: needSec).inSeconds;
    var remain = levelUpAt.difference(DateTime.now()).inSeconds;
    var proceed = whole - remain;
    return (proceed / whole * 100).toInt();
  }

  double levelUpCost() => level * StorageController().commonData.initialInfo.levelUpCost.toDouble();

  double levelUpBoostCost() {
    if (!startedLevelUp) return 0.0;
    var duration = levelUpAt.difference(DateTime.now());
    return duration.inMinutes * StorageController().commonData.initialInfo.levelUpBoostCost.toDouble();
  }

  void doRepair() {
    durability = StorageController().commonData.initialInfo.carMaxDurability;
  }

  double repairCost() {
    if (StorageController().commonData.initialInfo.carMaxDurability == durability) return 0.0;
    var gap = StorageController().commonData.initialInfo.carMaxDurability - durability;
    return gap * StorageController().commonData.initialInfo.repairCost.toDouble();
  }

  String getDrivenStatus() {
    var v = driven / StorageController().commonData.initialInfo.carMaxMileage;
    var ret = "Fine";
    if (0.8 < v) {
      ret = "Danger";
    } else if (0.5 < v) {
      ret = "Warning";
    }
    return ret;
  }

  Color getCarGradeColor() {
    var v = driven / StorageController().commonData.initialInfo.carMaxMileage;
    var ret = kCharColor;
    if (0.8 < v) {
      ret = dangerColor;
    } else if (0.5 < v) {
      ret = warningColor;
    }
    return ret;
  }

  Color getDrivenColor() {
    var v = driven / StorageController().commonData.initialInfo.carMaxMileage;
    var ret = kCharColor;
    if (0.8 < v) {
      ret = dangerColor;
    } else if (0.5 < v) {
      ret = warningColor;
    }
    return ret;
  }

  Color getDurabilityColor() {
    var v = durability / StorageController().commonData.initialInfo.carMaxDurability;
    var ret = kCharColor;
    if (0.2 > v) {
      ret = dangerColor;
    } else if (0.5 > v) {
      ret = warningColor;
    }
    return ret;
  }
}

enum CarSortType {
  highestLevel,
  lowestLevel,
  highestGrade,
  lowestGrade,
}

extension CarSortTypeExtension on CarSortType {
  String get getString {
    switch (this) {
      case CarSortType.highestLevel:
        return "Highest Level";
      case CarSortType.lowestLevel:
        return "Lowest Level";
      case CarSortType.highestGrade:
        return "Highest Grade";
      case CarSortType.lowestGrade:
        return "Lowest Grade";
      default:
        return "";
    }
  }
}

extension CarSortStringExtension on String {
  CarSortType get getCarSortType {
    switch (this) {
      case "Highest Level":
        return CarSortType.highestLevel;
      case "Lowest Level":
        return CarSortType.lowestLevel;
      case "Highest Grade":
        return CarSortType.highestGrade;
      case "Lowest Grade":
        return CarSortType.lowestGrade;
      default:
        return CarSortType.highestLevel;
    }
  }
}

@JsonSerializable()
class CarNftList {
  final List<CarNft> list;

  CarNftList(this.list);

  factory CarNftList.fromJson(Map<String, dynamic> json) => _$CarNftListFromJson(json);
  Map<String, dynamic> toJson() => _$CarNftListToJson(this);

  void sort(CarSortType sortType) {
    switch (sortType) {
      case CarSortType.highestLevel:
        list.sort((a, b) => b.level.compareTo(a.level));
        break;
      case CarSortType.lowestLevel:
        list.sort((a, b) => a.level.compareTo(b.level));
        break;
      case CarSortType.highestGrade:
        list.sort((a, b) => b.grade.compareTo(a.grade));
        break;
      case CarSortType.lowestGrade:
        list.sort((a, b) => a.grade.compareTo(b.grade));
        break;
      default:
        break;
    }
  }

  static List<String> getSortItems() {
    return CarSortType.values.map((e) => e.getString).toList();
  }

  double getTotalSpeed() => list.fold(0.0, (previous, current) => previous + current.speed);
  double getTotalLuck() => list.fold(0.0, (previous, current) => previous + current.lucky);
  double getTotalCharge() => list.fold(0.0, (previous, current) => previous + current.charge);
  double getTotalRepair() => list.fold(0.0, (previous, current) => previous + current.speed);
}
