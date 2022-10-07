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

  static const int heartBeatCheckerPeriod = 5;
  late Timer? _heartBeatChecker;
  late GameInfo? _game;
  late MiningResult? miningResult;

  Future<bool> isAppInstalled(String packageName) async {
    return await DeviceApps.isAppInstalled(packageName);
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

    _game = game;
    miningResult = StorageController().miningStart(_game!);
    if (null == miningResult) return false;

    _heartBeatChecker = Timer.periodic(const Duration(seconds: heartBeatCheckerPeriod), (timer) {
      _callBackHeartBeatChecker();
    });

    if (0 == await LaunchApp.openApp(androidPackageName: game.packageName, openStore: true)) return false;

    return true;
  }

  Future<bool> resumeApp(GameInfo game) async {
    if (null == _game || null == miningResult) return false;

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

    miningResult!.miningPlay(DateTime.now().millisecondsSinceEpoch);

    return true;
  }

  void stopGameChecker() {
    _heartBeatChecker?.cancel();
  }

  Future<void> _callBackHeartBeatChecker() async {
    if (null == _game) return;

    List<EventUsageInfo> events = [];

    DateTime endDate = DateTime.now();
    DateTime startDate = endDate.subtract(const Duration(seconds: heartBeatCheckerPeriod));

    List<EventUsageInfo> queryEvents = await UsageStats.queryEvents(startDate, endDate);
    for (var qe in queryEvents) {
      if (qe.packageName == _game!.packageName){
        events.add(qe);
      }
    }

    for (var e in events) {
      print("---------- ${e.packageName} - ${e.eventType} - ${e.timeStamp}");
      if (e.packageName == _game!.packageName){
        if (MOVE_TO_BACKGROUND == e.eventType ||
            ACTIVITY_STOPPED == e.eventType) {
          if (null != e.timeStamp) {
            miningResult!.miningPause(int.parse(e.timeStamp!));
          }
        } else if (MOVE_TO_FOREGROUND == e.eventType ||
            ACTIVITY_RESUMED == e.eventType) {
          if (null != e.timeStamp) {
            miningResult!.miningPlay(int.parse(e.timeStamp!));
          }
        }
      }
    }

    StorageController().miningToken(_game!, miningResult!, DateTime.now().millisecondsSinceEpoch);
  }

  void gameStopped() {
    print("---------- gameStopped");
    _heartBeatChecker?.cancel();

    if (null == _game || null == miningResult) return;

    StorageController().miningEnd(_game!, miningResult!);

    _game = null;
    miningResult = null;
  }

}
