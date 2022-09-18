class GameInfo {
  late int id;
  late String name;
}

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
}

class GameRewardTable {
  late Map<int /*GameInfo.id*/, int /*GameReward.id*/ > rewardMap;
}
