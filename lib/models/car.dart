import 'package:json_annotation/json_annotation.dart';

import '../common/config_base.dart';
part 'car.g.dart';

@JsonSerializable()
class CarModel {
  final int id;
  final String vehicleType;
  final int model;
  final int grade;
  final double price;
  final int speed;
  final int lucky;
  final int charge;
  final int durability;
  final int driven;
  final int repair;
  final int gemSockets;
  final int mintingCount;
  final int mintedFormTableId;

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
class CarModelList {
  final List<CarModel> list;

  CarModelList(this.list);

  factory CarModelList.fromJson(Map<String, dynamic> json) => _$CarModelListFromJson(json);
  Map<String, dynamic> toJson() => _$CarModelListToJson(this);

  List<CarModel>? whereGrade(int grade) {
    if (0 >= grade || list.isEmpty) return null;
    return list.where((o) {
      return o.grade == grade;
    }) as List<CarModel>;
  }
}

@JsonSerializable()
class CarNft {
  final int id;
  final int modelId;
  final double price;
  final double condition;
  final int level;
  final double curDurability;
  final double curDriven;
  final double curRepair;
  final int remainGemSockets;
  final int remainMintingCount;
  final bool valid;
  final DateTime burnedAt;

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
class CarNftList {
  final List<CarNft> nftList;

  CarNftList(this.nftList);

  factory CarNftList.fromJson(Map<String, dynamic> json) => _$CarNftListFromJson(json);
  Map<String, dynamic> toJson() => _$CarNftListToJson(this);
}

@JsonSerializable()
class CarMintingTable {
  final int id;
  final List<int /*CarModel.id*/ > mintedCarList;
  final List<int /*CarModel.id*/ > mintCarList;

  CarMintingTable(
      this.id,
      this.mintedCarList,
      this.mintCarList,
      );

  factory CarMintingTable.fromJson(Map<String, dynamic> json) => _$CarMintingTableFromJson(json);
  Map<String, dynamic> toJson() => _$CarMintingTableToJson(this);
}

@JsonSerializable()
class CarMintingTableList {
  final List<CarMintingTable> list;

  CarMintingTableList(this.list);

  factory CarMintingTableList.fromJson(Map<String, dynamic> json) => _$CarMintingTableListFromJson(json);
  Map<String, dynamic> toJson() => _$CarMintingTableListToJson(this);
}
