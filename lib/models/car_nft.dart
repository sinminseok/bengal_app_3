import 'package:json_annotation/json_annotation.dart';
part 'car_nft.g.dart';

@JsonSerializable()
class CarModel {
  late int id;
  late String vehicleType;
  late int model;
  late int grade;
  late double price;
  late int speed;
  late int lucky;
  late int charge;
  late int durability;
  late int driven;
  late int repair;
  late int gemSockets;
  late int mintingCount;
  late int mintedFormTableId;

  CarModel(
      this.id,
      this.vehicleType,
      this.model,
      this.grade,
      this.price,
      this.speed,
      this.lucky,
      this.charge,
      this.durability,
      this.driven,
      this.repair,
      this.gemSockets,
      this.mintingCount,
      this.mintedFormTableId,
      );

  factory CarModel.fromJson(Map<String, dynamic> json) => _$CarModelFromJson(json);
  Map<String, dynamic> toJson() => _$CarModelToJson(this);
}

@JsonSerializable()
class CarNft {
  late int id;
  late int modelId;
  late double price;
  late double condition;
  late int level;
  late double curDurability;
  late double curDriven;
  late double curRepair;
  late int remainGemSockets;
  late int remainMintingCount;
  late bool valid;
  late DateTime burnedAt;

  CarNft(
      this.id,
      this.modelId,
      this.price,
      this.condition,
      this.level,
      this.curDurability,
      this.curDriven,
      this.curRepair,
      this.remainGemSockets,
      this.remainMintingCount,
      this.valid,
      this.burnedAt,
      );

  factory CarNft.fromJson(Map<String, dynamic> json) => _$CarNftFromJson(json);
  Map<String, dynamic> toJson() => _$CarNftToJson(this);
}

@JsonSerializable()
class CarMintingTable {
  late int id;
  late List<int /*CarModel.id*/ > mintedCarList;
  late List<int /*CarModel.id*/ > mintCarList;

  CarMintingTable(
      this.id,
      this.mintedCarList,
      this.mintCarList,
      );

  factory CarMintingTable.fromJson(Map<String, dynamic> json) => _$CarMintingTableFromJson(json);
  Map<String, dynamic> toJson() => _$CarMintingTableToJson(this);
}

