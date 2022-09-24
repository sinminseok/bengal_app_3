import 'package:json_annotation/json_annotation.dart';
part 'box.g.dart';

@JsonSerializable()
class BoxNft {
  final int id;
  final int grade;
  final double price;
  final int carNftId;
  final List<int> carGradeList;

  BoxNft(
      this.id,
      this.grade,
      this.price,
      this.carNftId,
      this.carGradeList
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
