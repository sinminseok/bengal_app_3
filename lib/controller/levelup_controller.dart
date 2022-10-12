import 'dart:async';
import 'package:bengal_app/controller/storage_controller.dart';

class LevelUpController {
  static final LevelUpController _instance = LevelUpController._internal();

  factory LevelUpController() {
    return _instance;
  }

  LevelUpController._internal();

  Timer? _powerChargeChecker;

  void start() {
    _powerChargeChecker = Timer.periodic(const Duration(seconds: 1), (timer) {
      _callBackPowerChargeChecker();
    });
  }

  void stop() {
    _powerChargeChecker?.cancel();
  }

  void _callBackPowerChargeChecker() {
    if (null == StorageController().account) return;

    for (var car in StorageController().carNftList!.list) {
      car.updateLevelUp();
    }
  }
}
