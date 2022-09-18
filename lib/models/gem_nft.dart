class GemModel {
  late int id;
  late int category;
  late double price;
  late int mintingTableId;
}

class GemNft {
  late int id;
  late int modelId;
  late double price;
}

class GemMintingTable {
  late int id;
  late List<int /*GemModel.id*/ > carList;
}
