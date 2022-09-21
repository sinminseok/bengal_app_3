import 'package:flutter/cupertino.dart';
import 'package:yaml/yaml.dart';
import '../../models/box_nft.dart';
import '../config_base.dart';

class BoxModelList extends ConfigBase {
  List<BoxModel> list = [];

  static BoxModelList fromJson(Map<String, dynamic> map) {
    var ret = BoxModelList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("modelList")) {
      map['modelList'].asMap().forEach((i, o) {
        ret.list.add(BoxModel.fromJson(o));
      });
    }
    return ret;
  }

  List<BoxModel>? whereCategory(int category) {
    debugPrint("whereGrade.carModelList : ${list.length}");
    if (0 >= category || list.isEmpty) return null;
    return list.where((o) {
      return o.category == category;
    }) as List<BoxModel>;
  }
}

class BoxNftList extends ConfigBase {
  List<BoxNft> list = [];

  static BoxNftList fromJson(Map<String, dynamic> map) {
    var ret = BoxNftList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("nftList")) {
      map['nftList'].asMap().forEach((i, o) {
        ret.list.add(BoxNft.fromJson(o));
      });
    }
    return ret;
  }
}

class BoxMintingTableList extends ConfigBase {
  List<BoxMintingTable> list = [];

  static BoxMintingTableList fromJson(Map<String, dynamic> map) {
    var ret = BoxMintingTableList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("mintingTable")) {
      map['mintingTable'].asMap().forEach((i, o) {
        ret.list.add(BoxMintingTable.fromJson(o));
      });
    }
    return ret;
  }
}
