import 'package:json_annotation/json_annotation.dart';
part 'game.g.dart';

@JsonSerializable()
class GameInfo {
  final int id;
  final String title;
  final int category;
  final double perPerDay;
  final double perPerPower;
  final double xPerPerDay;
  final double xPerPerPower;
  final int needCarGrade;
  final int needCarType;
  final int minCarLevel;


  GameInfo(
      this.id,
      this.title,
      this.category,
      this.perPerDay,
      this.perPerPower,
      this.xPerPerDay,
      this.xPerPerPower,
      this.needCarGrade,
      this.needCarType,
      this.minCarLevel,
      );

  factory GameInfo.fromJson(Map<String, dynamic> json) => _$GameInfoFromJson(json);
  Map<String, dynamic> toJson() => _$GameInfoToJson(this);
}

@JsonSerializable()
class GameInfoList {
  final List<GameInfo> list;

  GameInfoList(this.list);

  factory GameInfoList.fromJson(Map<String, dynamic> json) => _$GameInfoListFromJson(json);
  Map<String, dynamic> toJson() => _$GameInfoListToJson(this);
}
