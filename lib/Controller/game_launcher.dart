
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

  // Future<int> openApp(GameInfo gameInfo) async {
  //   //DeviceApps.openApp('com.frandroid.app');
  //   DeviceApps.listenToAppsChanges().where(
  //       (ApplicationEvent event) => event.packageName == gameInfo.packageName).listen((event) {
  //         debugPrint('$event');
  //   });
  //
  //   return await LaunchApp.openApp(
  //       androidPackageName: gameInfo.packageName,
  //       openStore: true);
  // }

  Future<int> openApp(String gameInfo) async {
    //DeviceApps.openApp('com.frandroid.app');
    // DeviceApps.listenToAppsChanges().where(
    //         (ApplicationEvent event) => event.packageName == gameInfo).listen((event) {
    //     Fluttertoast.showToast(
    //         msg: event.event.toString(),
    //         backgroundColor: Colors.grey,
    //         textColor: Colors.black,
    //         gravity: ToastGravity.CENTER);
    // });

    // var msg = "gameInfo not installed";
    // if (await DeviceApps.isAppInstalled(gameInfo)) {
    //   msg = "gameInfo installed";
    // }
    // Fluttertoast.showToast(
    //     msg: 'gameInfo installed',
    //     backgroundColor: Colors.grey,
    //     textColor: Colors.black,
    //     gravity: ToastGravity.CENTER);


    debugPrint('------------- event.event check start');
    DeviceApps.listenToAppsChanges().where(
            (ApplicationEvent event) => event.packageName == gameInfo).listen((event) {
      debugPrint('-------------${event.event}');
      // Fluttertoast.showToast(
      //     msg: event.event.toString(),
      //     backgroundColor: Colors.grey,
      //     textColor: Colors.black,
      //     gravity: ToastGravity.CENTER);
    });
    debugPrint('------------- event.event check end');

    await LaunchApp.openApp(
        androidPackageName: gameInfo,
        openStore: true);


    return 1;
  }
}
