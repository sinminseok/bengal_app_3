import 'package:json_annotation/json_annotation.dart';
part 'box_nft.g.dart';

@JsonSerializable()
class BoxModel {
  late int id;
  late int category;
  late double price;
  late int mintingTableId;

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
class BoxNft {
  late int id;
  late int modelId;
  late double price;

  BoxNft(
      this.id,
      this.modelId,
      this.price,
      );

  factory BoxNft.fromJson(Map<String, dynamic> json) => _$BoxNftFromJson(json);
  Map<String, dynamic> toJson() => _$BoxNftToJson(this);
}

@JsonSerializable()
class BoxMintingTable {
  late int id;
  late List<int /*CarModel.id*/ > carList;

  BoxMintingTable(
      this.id,
      this.carList,
      );

  factory BoxMintingTable.fromJson(Map<String, dynamic> json) => _$BoxMintingTableFromJson(json);
  Map<String, dynamic> toJson() => _$BoxMintingTableToJson(this);
}
