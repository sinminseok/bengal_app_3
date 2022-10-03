import 'package:json_annotation/json_annotation.dart';
part 'common_data.g.dart';

@JsonSerializable()
class CommonData {
  final InitialInfo initialInfo;

  CommonData(this.initialInfo);

  factory CommonData.fromJson(Map<String, dynamic> json) => _$CommonDataFromJson(json);
  Map<String, dynamic> toJson() => _$CommonDataToJson(this);
}

@JsonSerializable()
class InitialInfo {
  final double defaultXPerAmount;
  final double defaultPerAmount;
  final double defaultHavahAmount;
  final double defaultOnChainXPerAmount;
  final double defaultOnChainPerAmount;
  final double defaultOnChainHavahAmount;
  final double defaultOnChainUsdcAmount;
  final double dailyLimitXPer;
  final double dailyLimitPer;
  final int maxPower;
  final int maxPowerChargeSec;
  final int specialBoxInitialLifeTime;
  final double specialBoxOpenBaseCost;
  final double specialBoxOpenCostPerSec;
  final int carMaxDurability;
  final int levelUpStatusPoint;
  final double breedXPerCost;
  final double breedPerCost;

  final double repairCost;
  final int levelUpTime;
  final int levelUpCost;
  final int specialBoxEarnRate;
  final int decreaseDurability;

  final int increaseMileage;
  final int pendingDelayTime;
  final int tokenValue01;
  final int tokenValue02;
  final int tokenValue03;
  final int tokenValue04;

  InitialInfo(
      this.defaultXPerAmount,
      this.defaultPerAmount,
      this.defaultHavahAmount,
      this.defaultOnChainXPerAmount,
      this.defaultOnChainPerAmount,
      this.defaultOnChainHavahAmount,
      this.defaultOnChainUsdcAmount,
      this.dailyLimitXPer,
      this.dailyLimitPer,
      this.maxPower,
      this.maxPowerChargeSec,
      this.specialBoxInitialLifeTime,
      this.specialBoxOpenBaseCost,
      this.specialBoxOpenCostPerSec,
      this.carMaxDurability,
      this.levelUpStatusPoint,
      this.breedXPerCost,
      this.breedPerCost,
      this.repairCost,
      this.levelUpTime,
      this.levelUpCost,
      this.specialBoxEarnRate,
      this.decreaseDurability,
      this.increaseMileage,
      this.pendingDelayTime,
      this.tokenValue01,
      this.tokenValue02,
      this.tokenValue03,
      this.tokenValue04
      );

  factory InitialInfo.fromJson(Map<String, dynamic> json) => _$InitialInfoFromJson(json);
  Map<String, dynamic> toJson() => _$InitialInfoToJson(this);

  double getRateSpecialBoxMining(int seconds) {
    //스페셜박스 획득 확률 = 플레이타임(초) / SPECIALBOX_EARN_RATE
    return seconds / (specialBoxEarnRate as double);
  }
}
