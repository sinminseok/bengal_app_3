class BoxModel {
  late int id;
  late int category;
  late double price;
  late int mintingTableId;
}

class BoxNft {
  late int id;
  late int modelId;
  late double price;
}

class BoxMintingTable {
  late int id;
  late List<int /*CarModel.id*/ > carList;
}
