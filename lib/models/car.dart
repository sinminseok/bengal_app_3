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

@JsonSerializable()
class CarNftList {
  final List<CarNft> list;

  CarNftList(this.list);

  factory CarNftList.fromJson(Map<String, dynamic> json) => _$CarNftListFromJson(json);
  Map<String, dynamic> toJson() => _$CarNftListToJson(this);
}
