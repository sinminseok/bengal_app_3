
import '../common/string_configuration.dart';
import '../types/common.dart';
import '../types/string_type.dart';

class AssetsController {
  static final AssetsController _instance = AssetsController._internal();

  factory AssetsController() {
    return _instance;
  }

  AssetsController._internal();

  String getCoinIcon(CoinType type) {
    switch (type) {
      case CoinType.XPer:
        return "assets/images/lobby/icons/appbar_icons/xper_icon.png";
      case CoinType.Per:
        return "assets/images/lobby/icons/appbar_icons/per_icon.png";
      case CoinType.Havah:
        return "assets/images/lobby/icons/appbar_icons/havah_icon.png";
      case CoinType.Usdc:
        return "assets/images/wallet/icons/usdc_icon.png";
      default: return "";
    }
  }

  String getCoinUpperCaseName(CoinType type) {
    switch (type) {
      case CoinType.XPer:
        return StringConfiguration().uiString(UiStringType.TOKEN_NAME_01);
      case CoinType.Per:
        return StringConfiguration().uiString(UiStringType.TOKEN_NAME_02);
      case CoinType.Havah:
        return StringConfiguration().uiString(UiStringType.TOKEN_NAME_03);
      case CoinType.Usdc:
        return StringConfiguration().uiString(UiStringType.TOKEN_NAME_04);
      default: return "";
    }
  }
}
