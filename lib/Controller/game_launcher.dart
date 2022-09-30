import 'dart:async';
import 'package:device_apps/device_apps.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../models/game.dart';

class GameLauncher {
  static final GameLauncher _instance = GameLauncher._internal();

  factory GameLauncher() {
    return _instance;
  }

  GameLauncher._internal();

  late Timer _timer;

  Future<bool> isAppInstalled(String gameInfo) async {
    return await DeviceApps.isAppInstalled(gameInfo);
  }

  Future<bool> openApp(String packageName) async {
    if (!await isAppInstalled(packageName)) {
      Fluttertoast.showToast(
          msg:
              "The game is not installed.\r\nAfter installing the game, please run it again.\r\nGo to the game installation page.",
          backgroundColor: Colors.grey,
          textColor: Colors.black,
          gravity: ToastGravity.CENTER,
          toastLength: Toast.LENGTH_LONG);
      await LaunchApp.openApp(androidPackageName: packageName, openStore: true);
      return false;
    }

    // debugPrint('------------- event.event check start');
    // DeviceApps.listenToAppsChanges().where(
    //         (ApplicationEvent event) => event.packageName == gameInfo).listen((event) {
    //   debugPrint('-------------${event.event}');
    //   // Fluttertoast.showToast(
    //   //     msg: event.event.toString(),
    //   //     backgroundColor: Colors.grey,
    //   //     textColor: Colors.black,
    //   //     gravity: ToastGravity.CENTER);
    // });
    // debugPrint('------------- event.event check end');

    await LaunchApp.openApp(androidPackageName: packageName, openStore: true);

    return true;
  }
}
