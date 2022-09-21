import 'dart:convert';
import 'package:bengal_app/common/back_data/wallet_manager.dart';
import "package:flutter/services.dart";
import '../../models/account.dart';
import '../../models/wallet.dart';
import 'account_manager.dart';
import 'box_nft_manager.dart';
import 'car_nft_manager.dart';
import 'game_manager.dart';
import 'gem_nft_manager.dart';

class BackDataManager {
  static final BackDataManager _instance = BackDataManager._internal();

  AccountList accountList = AccountList();
  WalletList walletList = WalletList();

  CarModelList carModelList = CarModelList();
  CarNftList carNftList = CarNftList();
  CarMintingTableList carMintingTableList = CarMintingTableList();

  BoxModelList boxModelList = BoxModelList();
  BoxNftList boxNftList = BoxNftList();
  BoxMintingTableList boxMintingTableList = BoxMintingTableList();

  GemModelList gemModelList = GemModelList();
  GemNftList gemNftList = GemNftList();
  GemMintingTableList gemMintingTableList = GemMintingTableList();

  GameList gameList = GameList();
  GameRewardList gameRewardList = GameRewardList();
  GameRewardTableList gameRewardTableList = GameRewardTableList();

  factory BackDataManager() {
    return _instance;
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


    gameList = GameList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/game_infos.json")));

    gameRewardList = GameRewardList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/game_rewards.json")));

    gameRewardTableList = GameRewardTableList.fromJson(await json
        .decode(await rootBundle.loadString("assets/back_data/game_reward_table.json")));
  }

  BackDataManager._internal() {
    _loadData();
  }

  //Account? signIn(String name, String password) => accountList.signIn(name, password);
  //Account? getAccountToId(int id) => accountList.get(id);
  Wallet? getWallet(int accountId) => walletList.get(accountId);
}
