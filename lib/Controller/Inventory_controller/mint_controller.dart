

import 'package:flutter/cupertino.dart';

class Mint_Controller with ChangeNotifier {

  List<String> list = [];

  void addItem(String item) {
    list.add(item);
    notifyListeners();
  }

  void delete_all(){
    list = [];
    notifyListeners();

  }

  void deleteItem(int index) {
    list.removeAt(index);
    notifyListeners();
  }

}
