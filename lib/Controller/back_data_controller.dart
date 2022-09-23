import 'dart:convert';
import "package:flutter/services.dart";
import '../models/account.dart';
import '../models/box.dart';
import '../models/car.dart';
import '../models/common_data.dart';
import '../models/game.dart';
import '../models/gem.dart';
import '../models/wallet.dart';

class BackDataManager {
  static final BackDataManager _instance = BackDataManager._internal();

  late AccountList accountList;
  late WalletList walletList;

  late CarModelList carModelList;
  late CarNftList carNftList;
  late CarMintingTableList carMintingTableList;

  late BoxModelList boxModelList;
  late BoxNftList boxNftList;
  late BoxMintingTableList boxMintingTableList;

  late GemModelList gemModelList;
  late GemNftList gemNftList;
  late GemMintingTableList gemMintingTableList;

  late GameInfoList gameList;
  late GameRewardList gameRewardList;
  late GameRewardTableList gameRewardTableList;

  late CommonData commonData;

  factory BackDataManager() {
    return _instance;
  }

  BackDataManager._internal() {
    _loadData();
  }

  Future<void> _loadData() async {
    accountList = AccountList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/accounts.json")));

    walletList = WalletList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/wallets.json")));


    carModelList = CarModelList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/car_models.json")));

    carNftList = CarNftList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/car_nfts.json")));

    carMintingTableList = CarMintingTableList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/car_minting_table.json")));


    boxModelList = BoxModelList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/box_models.json")));

    boxNftList = BoxNftList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/box_nfts.json")));

    boxMintingTableList = BoxMintingTableList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/box_minting_table.json")));


    gemModelList = GemModelList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/gem_models.json")));

    gemNftList = GemNftList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/gem_nfts.json")));

    gemMintingTableList = GemMintingTableList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/gem_minting_table.json")));


    gameList = GameInfoList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/game_infos.json")));

    gameRewardList = GameRewardList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/game_rewards.json")));

    gameRewardTableList = GameRewardTableList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/game_reward_table.json")));

    commonData = CommonData.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/common_data.json")));
  }

}
