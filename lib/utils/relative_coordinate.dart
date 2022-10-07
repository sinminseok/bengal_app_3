import "package:flutter/cupertino.dart";

class RelativeCoordinate {
  static final RelativeCoordinate _instance = RelativeCoordinate._internal();

  factory RelativeCoordinate() {
    return _instance;
  }

  RelativeCoordinate._internal();

  late double wScale = 1.0;
  late double hScale = 1.0;
  late double spScale = 1.0;

  void setSize(Size designSize, BuildContext context) {
    wScale= MediaQuery.of(context).size.width / designSize.width;
    hScale = MediaQuery.of(context).size.height / designSize.height;
    // todo : sp scale calc
  }
}

extension SizeHelper on num {
  double get ww => RelativeCoordinate().wScale * this;

  double get hh => RelativeCoordinate().hScale * this;

  double get spp => RelativeCoordinate().wScale * this;
}
