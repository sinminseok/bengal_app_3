import 'package:json_annotation/json_annotation.dart';

part 'gem.g.dart';

@JsonSerializable()
class GemModel {
  final int id;
  final int category;
  final double price;
  final int mintingTableId;

  GemModel(
    this.id,
    this.category,
    this.price,
    this.mintingTableId,
  );

  factory GemModel.fromJson(Map<String, dynamic> json) => _$GemModelFromJson(json);
  Map<String, dynamic> toJson() => _$GemModelToJson(this);
}

@JsonSerializable()
class GemModelList {
  final List<GemModel> list;

  GemModelList(this.list);

  factory GemModelList.fromJson(Map<String, dynamic> json) => _$GemModelListFromJson(json);
  Map<String, dynamic> toJson() => _$GemModelListToJson(this);

  List<GemModel>? whereCategory(int category) {
    if (0 >= category || list.isEmpty) return null;
    return list.where((o) {
      return o.category == category;
    }) as List<GemModel>;
  }
}

@JsonSerializable()
class GemNft {
  final int id;
  final int modelId;
  final double price;

  GemNft(this.id, this.modelId, this.price);

  factory GemNft.fromJson(Map<String, dynamic> json) => _$GemNftFromJson(json);
  Map<String, dynamic> toJson() => _$GemNftToJson(this);
}

@JsonSerializable()
class GemNftList {
  final List<GemNft> list;

  GemNftList(this.list);

  factory GemNftList.fromJson(Map<String, dynamic> json) => _$GemNftListFromJson(json);
  Map<String, dynamic> toJson() => _$GemNftListToJson(this);
}

@JsonSerializable()
class GemMintingTable {
  final int id;
  final List<int /*GemModel.id*/ > carList;

  GemMintingTable(this.id, this.carList);

  factory GemMintingTable.fromJson(Map<String, dynamic> json) => _$GemMintingTableFromJson(json);
  Map<String, dynamic> toJson() => _$GemMintingTableToJson(this);
}

@JsonSerializable()
class GemMintingTableList {
  final List<GemMintingTable> list;

  GemMintingTableList(this.list);

  factory GemMintingTableList.fromJson(Map<String, dynamic> json) => _$GemMintingTableListFromJson(json);
  Map<String, dynamic> toJson() => _$GemMintingTableListToJson(this);
}
