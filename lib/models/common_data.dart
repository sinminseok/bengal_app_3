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
  final int defaultXPerAmount;
  final int defaultPerAmount;
  final int defaultHvhAmount;
  final int dailyLimitXPer;
  final int dailyLimitPer;
  final int maxPower;
  final int maxPowerChargeSec;
  final int specialBoxInitialLifeTime;
  final double specialBoxOpenBaseCost;
  final double specialBoxOpenCostPerSec;
  final int carMaxDurability;

  InitialInfo(
      this.defaultXPerAmount,
      this.defaultPerAmount,
      this.defaultHvhAmount,
      this.dailyLimitXPer,
      this.dailyLimitPer,
      this.maxPower,
      this.maxPowerChargeSec,
      this.specialBoxInitialLifeTime,
      this.specialBoxOpenBaseCost,
      this.specialBoxOpenCostPerSec,
      this.carMaxDurability,
      );

  factory InitialInfo.fromJson(Map<String, dynamic> json) => _$InitialInfoFromJson(json);
  Map<String, dynamic> toJson() => _$InitialInfoToJson(this);
}
