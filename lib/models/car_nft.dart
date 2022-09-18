class CarModel {
  late int id;
  late String vehicleType;
  late int model;
  late int grade;
  late double price;
  late double speed;
  late double lucky;
  late double charge;
  late double durability;
  late double driven;
  late double repair;
  late String gemSockets;
  late int mintingCount;
  late int mintingTableId;
}

class CarNft {
  late int id;
  late int modelId;
  late double price;
  late double condition;
  late int level;
  late double curDurability;
  late double curDriven;
  late double curRepair;
  late String remainGemSockets;
  late int remainMintingCount;
  late bool valid;
  late DateTime burnedAt;
}

class CarMintingTable {
  late int id;
  late List<int /*CarModel.id*/ > mintedCarList;
  late List<int /*CarModel.id*/ > mintCarList;
}
//
// class CarMintingInfo {
//   late Map<int /*CarModel.id*/, int /*CarMintingCondition.id*/ > mintingMap;
// }
