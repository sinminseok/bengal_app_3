import 'package:json_annotation/json_annotation.dart';
part 'game.g.dart';

@JsonSerializable()
class GameInfo {
  late int id;
  late String title;

  GameInfo(
      this.id,
      this.title,
      );

  factory GameInfo.fromJson(Map<String, dynamic> json) => _$GameInfoFromJson(json);
  Map<String, dynamic> toJson() => _$GameInfoToJson(this);
}

@JsonSerializable()
class GameReward {
  late int id;
  late double perPerDay;
  late double perPerPower;
  late double xPerPerDay;
  late double xPerPerPower;
  late List<int /*CarModel.id*/ > carModelList;
  late int grade;
  late int level;
  late DateTime dueTime;

  GameReward(
      this.id,
      this.perPerDay,
      this.perPerPower,
      this.xPerPerDay,
      this.xPerPerPower,
      this.carModelList,
      this.grade,
      this.level,
      this.dueTime,
      );

  factory GameReward.fromJson(Map<String, dynamic> json) => _$GameRewardFromJson(json);
  Map<String, dynamic> toJson() => _$GameRewardToJson(this);
}

@JsonSerializable()
class GameRewardTable {
  late int game;
  late int reward;

  GameRewardTable(
      this.game,
      this.reward,
      );

  factory GameRewardTable.fromJson(Map<String, dynamic> json) => _$GameRewardTableFromJson(json);
  Map<String, dynamic> toJson() => _$GameRewardTableToJson(this);
}
