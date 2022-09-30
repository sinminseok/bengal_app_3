

import 'package:flutter/cupertino.dart';

class Frame_Controller with ChangeNotifier {


  int selectedItem = 0;

  void convert(int val) {
    selectedItem = val;
    notifyListeners();
  }

}