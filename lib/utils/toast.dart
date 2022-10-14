

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showtoast(String message) async {
  Fluttertoast.showToast(
    msg: message,
    timeInSecForIosWeb: 2,
    textColor: Colors.black,
    backgroundColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
  );
}

