import 'package:flutter/material.dart';

class Http_services with ChangeNotifier{


  BuildContext? _context;

  //false 일때 튜토리얼 모드 켜져있는거 true일때 꺼져있는거


  BuildContext? get out_context => _context;

  //튜토리얼 모드 체크 함수
  void change_tutorial(para_context) async {
    print("DDDD");
    _context = para_context;
    notifyListeners();
  }

  void tesst(context){
    Scaffold.of(context).openDrawer();
  }
}
