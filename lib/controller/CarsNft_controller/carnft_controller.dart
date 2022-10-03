

import 'package:bengal_app/models/car.dart';
import 'package:flutter/cupertino.dart';

class Carnft_Controller with ChangeNotifier {

  CarNft? _selected_carnft;

  CarNft? get selected_carnft => _selected_carnft;

  void selected(CarNft carnft) {
    print("provider");
    print(carnft.id);

    _selected_carnft = carnft;
    notifyListeners();
    print("HI");
  }

}