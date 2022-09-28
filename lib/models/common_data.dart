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
  final int levelUpStatusPoint;
  final int breedXPerCost;
  final int breedPerCost;

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
      this.levelUpStatusPoint,
      this.breedXPerCost,
      this.breedPerCost,
      );

  factory InitialInfo.fromJson(Map<String, dynamic> json) => _$InitialInfoFromJson(json);
  Map<String, dynamic> toJson() => _$InitialInfoToJson(this);
}
