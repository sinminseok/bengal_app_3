import 'package:yaml/yaml.dart';
import '../../models/game.dart';
import '../config_base.dart';

class GameList extends ConfigBase {
  List<GameInfo> list = [];

  static GameList fromJson(Map<String, dynamic> map) {
    var ret = GameList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("gameList")) {
      map['gameList'].asMap().forEach((i, o) {
        ret.list.add(GameInfo.fromJson(o));
      });
    }
    return ret;
  }
}

class GameRewardList extends ConfigBase {
  List<GameReward> list = [];

  static GameRewardList fromJson(Map<String, dynamic> map) {
    var ret = GameRewardList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("rewardList")) {
      map['rewardList'].asMap().forEach((i, o) {
        ret.list.add(GameReward.fromJson(o));
      });
    }
    return ret;
  }
}

class GameRewardTableList extends ConfigBase {
  List<GameRewardTable> list = [];

  static GameRewardTableList fromJson(Map<String, dynamic> map) {
    var ret = GameRewardTableList();

    if (map.containsKey("Version")) ret.Version = map["Version"];
    if (map.containsKey("gameRewardList")) {
      map['gameRewardList'].asMap().forEach((i, o) {
        ret.list.add(GameRewardTable.fromJson(o));
      });
    }
    return ret;
  }
}
