import 'package:json_annotation/json_annotation.dart';
part 'box.g.dart';

@JsonSerializable()
class BoxModel {
  final int id;
  final int category;
  final double price;
  final int mintingTableId;

  BoxModel(
      this.id,
      this.category,
      this.price,
      this.mintingTableId,
      );

  factory BoxModel.fromJson(Map<String, dynamic> json) => _$BoxModelFromJson(json);
  Map<String, dynamic> toJson() => _$BoxModelToJson(this);
}

@JsonSerializable()
class BoxModelList {
  final List<BoxModel> list;

  BoxModelList(
      this.list
      );

  factory BoxModelList.fromJson(Map<String, dynamic> json) => _$BoxModelListFromJson(json);
  Map<String, dynamic> toJson() => _$BoxModelListToJson(this);

  List<BoxModel>? whereCategory(int category) {
    if (0 >= category || list.isEmpty) return null;
    return list.where((o) {
      return o.category == category;
    }) as List<BoxModel>;
  }
}

@JsonSerializable()
class BoxNft {
  final int id;
  final int modelId;
  final double price;

  BoxNft(
      this.id,
      this.modelId,
      this.price,
      );

  factory BoxNft.fromJson(Map<String, dynamic> json) => _$BoxNftFromJson(json);
  Map<String, dynamic> toJson() => _$BoxNftToJson(this);
}

@JsonSerializable()
class BoxNftList {
  final List<BoxNft> list;

  BoxNftList(this.list);

  factory BoxNftList.fromJson(Map<String, dynamic> json) => _$BoxNftListFromJson(json);
  Map<String, dynamic> toJson() => _$BoxNftListToJson(this);
}

@JsonSerializable()
class BoxMintingTable {
  final int id;
  final List<int /*CarModel.id*/ > carList;

  BoxMintingTable(this.id, this.carList);

  factory BoxMintingTable.fromJson(Map<String, dynamic> json) => _$BoxMintingTableFromJson(json);
  Map<String, dynamic> toJson() => _$BoxMintingTableToJson(this);
}

@JsonSerializable()
class BoxMintingTableList {
  final List<BoxMintingTable> list;

  BoxMintingTableList(this.list);

  factory BoxMintingTableList.fromJson(Map<String, dynamic> json) => _$BoxMintingTableListFromJson(json);
  Map<String, dynamic> toJson() => _$BoxMintingTableListToJson(this);
}
