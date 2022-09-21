import 'package:flutter/cupertino.dart';
import 'package:yaml/yaml.dart';
import '../../models/gem_nft.dart';
import '../config_base.dart';

class GemModelList extends ConfigBase {
  List<GemModel> list = [];

  static GemModelList fromJson(Map<String, dynamic> map) {
    var ret = GemModelList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("modelList")) {
      map['modelList'].asMap().forEach((i, o) {
        ret.list.add(GemModel.fromJson(o));
      });
    }
    return ret;
  }

  List<GemModel>? whereCategory(int category) {
    debugPrint("whereGrade.gemModelList : ${list.length}");
    if (0 >= category || list.isEmpty) return null;
    return list.where((o) {
      return o.category == category;
    }) as List<GemModel>;
  }
}

class GemNftList extends ConfigBase {
  List<GemNft> list = [];

  static GemNftList fromJson(Map<String, dynamic> map) {
    var ret = GemNftList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("nftList")) {
      map['nftList'].asMap().forEach((i, o) {
        ret.list.add(GemNft.fromJson(o));
      });
    }
    return ret;
  }
}

class GemMintingTableList extends ConfigBase {
  List<GemMintingTable> list = [];

  static GemMintingTableList fromJson(Map<String, dynamic> map) {
    var ret = GemMintingTableList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("mintingTable")) {
      map['mintingTable'].asMap().forEach((i, o) {
        ret.list.add(GemMintingTable.fromJson(o));
      });
    }
    return ret;
  }
}
