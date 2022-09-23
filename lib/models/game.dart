import 'package:json_annotation/json_annotation.dart';
part 'game.g.dart';

@JsonSerializable()
class GameInfo {
  final int id;
  final String title;

  GameInfo(this.id,this.title);

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

@JsonSerializable()
class GameReward {
  final int id;
  final double perPerDay;
  final double perPerPower;
  final double xPerPerDay;
  final double xPerPerPower;
  final List<int /*CarModel.id*/ > carModelList;
  final int grade;
  final int level;
  final DateTime dueTime;

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
class GameRewardList {
  final List<GameReward> list;

  GameRewardList(this.list);

  factory GameRewardList.fromJson(Map<String, dynamic> json) => _$GameRewardListFromJson(json);
  Map<String, dynamic> toJson() => _$GameRewardListToJson(this);
}

@JsonSerializable()
class GameRewardTable {
  final int game;
  final int reward;

  GameRewardTable(this.game, this.reward);

  factory GameRewardTable.fromJson(Map<String, dynamic> json) => _$GameRewardTableFromJson(json);
  Map<String, dynamic> toJson() => _$GameRewardTableToJson(this);
}

@JsonSerializable()
class GameRewardTableList {
  final List<GameRewardTable> list;

  GameRewardTableList(this.list);

  factory GameRewardTableList.fromJson(Map<String, dynamic> json) => _$GameRewardTableListFromJson(json);
  Map<String, dynamic> toJson() => _$GameRewardTableListToJson(this);
}
