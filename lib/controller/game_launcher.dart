import 'dart:async';
import 'dart:math';
import 'package:bengal_app/controller/storage_controller.dart';
import 'package:device_apps/device_apps.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:usage_stats/usage_stats.dart';
import '../models/game.dart';

const ACTIVITY_RESUMED = "1";
const MOVE_TO_FOREGROUND = "1";
const MOVE_TO_BACKGROUND = "2";
const STANDBY_BUCKET_CHANGED = "11";
const ACTIVITY_STOPPED = "23";

class GameLauncher {
  static final GameLauncher _instance = GameLauncher._internal();

  factory GameLauncher() {
    return _instance;
  }

  GameLauncher._internal();

  late Timer? _heartBeatChecker;
  late GameInfo? _game;
  late MiningResult? _miningResult;

  Future<bool> isAppInstalled(String gameInfo) async {
    return await DeviceApps.isAppInstalled(gameInfo);
  }

  Future<bool> openApp(GameInfo game) async {


    if (!await isAppInstalled(game.packageName)) {
      Fluttertoast.showToast(
          msg:
              "The game is not installed.\r\nAfter installing the game, please run it again.\r\nGo to the game installation page.",
          backgroundColor: Colors.grey,
          textColor: Colors.black,
          gravity: ToastGravity.CENTER,
          toastLength: Toast.LENGTH_LONG);
      await LaunchApp.openApp(androidPackageName: game.packageName, openStore: true);
      return false;
    }

    if (0 == await LaunchApp.openApp(androidPackageName: game.packageName, openStore: true)) return false;

    _game = game;
    _miningResult = StorageController().miningStart(_game!);

    _heartBeatChecker = Timer.periodic(const Duration(seconds: 1), (timer) {
      _callBackHeartBeatChecker();
    });
    return true;
  }

  void stopGameChecker() {
    _heartBeatChecker?.cancel();
  }

  Future<void> _callBackHeartBeatChecker() async {
    if (null == _game) return;

    List<EventUsageInfo> events = [];

    DateTime endDate = DateTime.now();
    DateTime startDate = endDate.subtract(const Duration(minutes: 1));

    List<EventUsageInfo> queryEvents = await UsageStats.queryEvents(startDate, endDate);
    for (var qe in queryEvents) {
      if (qe.packageName == _game!.packageName){
        events.add(qe);
      }
    }

    // todo: 하루 채굴량 확인
    // todo: 게임별 전체 채굴량

    for (var e in events) {
      if (e.packageName == _game!.packageName){
        if (MOVE_TO_BACKGROUND == e.eventType ||
            ACTIVITY_STOPPED == e.eventType) {
          gameStopped();
        } else {
          // todo: mining
        }
      }
    }
  }

  void gameStopped() {
    _heartBeatChecker?.cancel();

    if (null == _game || null == _miningResult) return;

    StorageController().miningEnd(_game!, _miningResult!);

    _game = null;
    _miningResult = null;
  }

}
