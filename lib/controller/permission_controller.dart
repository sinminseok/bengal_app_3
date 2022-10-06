
import 'package:usage_stats/usage_stats.dart';

class PermissionController {
  static final PermissionController _instance = PermissionController._internal();

  factory PermissionController() {
    return _instance;
  }

  PermissionController._internal();

  Future<void> Function() setPermission() {
    print("111111111");
    return UsageStats.grantUsagePermission;
  }

  Future<bool> checkPermission() async {
    var check = await UsageStats.checkUsagePermission();
    if (null == check || !check) {
      return false;
    } else {
      return true;
    }
  }
}
