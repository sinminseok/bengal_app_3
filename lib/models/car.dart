import 'package:json_annotation/json_annotation.dart';
part 'car.g.dart';

@JsonSerializable()
class CarNft {
  final int id;
  final String image;
  final int location;
  final double price;
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
  final String seal;
  final int socket1Color;
  final int socket2Color;
  final int socket3Color;
  final int socket4Color;
  final int durability;
  final int driven;
  final int mintingCount;
  final int level;

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
      this.seal,
      this.socket1Color,
      this.socket2Color,
      this.socket3Color,
      this.socket4Color,
      this.durability,
      this.driven,
      this.mintingCount,
      this.level,
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
