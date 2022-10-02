
class DigitUtil {
  static String doubleToString(double val, [int decimals = 2]) {
    return double.parse(val.toStringAsFixed(2)).toString();
  }
}
