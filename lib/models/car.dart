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
  final double speed;
  final double lucky;
  final double charge;
  final double repair;
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
      this.speed,
      this.lucky,
      this.charge,
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
}

@JsonSerializable()
class CarNftList {
  final List<CarNft> list;

  CarNftList(this.list);

  factory CarNftList.fromJson(Map<String, dynamic> json) => _$CarNftListFromJson(json);
  Map<String, dynamic> toJson() => _$CarNftListToJson(this);
}
