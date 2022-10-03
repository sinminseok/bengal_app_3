

import 'package:flutter/cupertino.dart';

import '../../models/car.dart';

class Mint_Controller with ChangeNotifier {

  List<CarNft> list = [];

  void addItem(CarNft item) {
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
