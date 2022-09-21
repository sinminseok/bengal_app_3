import 'package:flutter/cupertino.dart';
import 'package:yaml/yaml.dart';
import '../../models/car_nft.dart';
import '../config_base.dart';

class CarModelList extends ConfigBase {
  List<CarModel> list = [];

  static CarModelList fromJson(Map<String, dynamic> map) {
    var ret = CarModelList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("modelList")) {
      map['modelList'].asMap().forEach((i, o) {
        ret.list.add(CarModel.fromJson(o));
      });
    }
    return ret;
  }

  List<CarModel>? whereGrade(int grade) {
    debugPrint("whereGrade.carModelList : ${list.length}");
    if (0 >= grade || list.isEmpty) return null;
    return list.where((o) {
      return o.grade == grade;
    }) as List<CarModel>;
  }
}

class CarNftList extends ConfigBase {
  List<CarNft> list = [];

  static CarNftList fromJson(Map<String, dynamic> map) {
    var ret = CarNftList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("nftList")) {
      map['nftList'].asMap().forEach((i, o) {
        ret.list.add(CarNft.fromJson(o));
      });
    }
    return ret;
  }
}

class CarMintingTableList extends ConfigBase {
  List<CarMintingTable> list = [];

  static CarMintingTableList fromJson(Map<String, dynamic> map) {
    var ret = CarMintingTableList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("mintingTable")) {
      map['mintingTable'].asMap().forEach((i, o) {
        ret.list.add(CarMintingTable.fromJson(o));
      });
    }
    return ret;
  }
}
