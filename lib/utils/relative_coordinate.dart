import "package:flutter/cupertino.dart";

// enum PageType {
//   login,
//   lobby,
// }

// class RelativeCoordinate {
//   static final RelativeCoordinate _instance = RelativeCoordinate._internal();
//
//   static final Map<PageType, Size> _pageSizes = {};
//
//   factory RelativeCoordinate() {
//     return _instance;
//   }
//
//   RelativeCoordinate._internal() {
//     _pageSizes[PageType.login] = const Size(390, 844);
//     _pageSizes[PageType.lobby] = const Size(390, 844);
//   }
//
//   double getX(PageType page, BuildContext context, double x) =>
//       MediaQuery.of(context).size.width * (x / (_pageSizes[page]?.width ?? x));
//
//   double getY(PageType page, BuildContext context, double y) =>
//       MediaQuery.of(context).size.height *
//       (y / (_pageSizes[page]?.height ?? y));
//
//   EdgeInsets getEdgeInsetsFromLTRB(PageType page, BuildContext context,
//           double l, double t, double r, double b) =>
//       EdgeInsets.fromLTRB(getX(page, context, l), getY(page, context, t),
//           getX(page, context, r), getY(page, context, b));
// }

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

  double get spp => RelativeCoordinate().spScale * this;
}
