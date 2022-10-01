
class ConfigController {
  static final ConfigController _instance = ConfigController._internal();

  factory ConfigController() {
    return _instance;
  }

  ConfigController._internal();

  late bool certified = false;
}
