import 'package:json_annotation/json_annotation.dart';
part 'gem_nft.g.dart';

@JsonSerializable()
class GemModel {
  late int id;
  late int category;
  late double price;
  late int mintingTableId;

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
class GemNft {
  late int id;
  late int modelId;
  late double price;

  GemNft(
      this.id,
      this.modelId,
      this.price,
      );

  factory GemNft.fromJson(Map<String, dynamic> json) => _$GemNftFromJson(json);
  Map<String, dynamic> toJson() => _$GemNftToJson(this);
}

@JsonSerializable()
class GemMintingTable {
  late int id;
  late List<int /*GemModel.id*/ > carList;

  GemMintingTable(
      this.id,
      this.carList,
      );

  factory GemMintingTable.fromJson(Map<String, dynamic> json) => _$GemMintingTableFromJson(json);
  Map<String, dynamic> toJson() => _$GemMintingTableToJson(this);
}
