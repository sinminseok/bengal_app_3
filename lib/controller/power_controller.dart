import 'dart:async';
import 'package:bengal_app/controller/storage_controller.dart';

class PowerController {
  static final PowerController _instance = PowerController._internal();

  factory PowerController() {
    return _instance;
  }

  PowerController._internal();

  Timer? _powerChargeChecker;

  void start() {
    _powerChargeChecker = Timer.periodic(const Duration(seconds: 60), (timer) {
      _callBackPowerChargeChecker();
    });
  }

  void stop() {
    _powerChargeChecker?.cancel();
  }

  void _callBackPowerChargeChecker() {
    if (null == StorageController().account) return;
    if (0 == DateTime.now().minute % 60) {
      StorageController().account!.power = StorageController().commonData.initialInfo.maxPower;
      StorageController().account!.updatedAt = DateTime.now();
    }
  }
}
