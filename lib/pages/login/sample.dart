import "dart:async";
import "dart:developer";
import "package:flutter/material.dart";

import "widget/landing_logo_widget.dart";

class AnimatedAlignScreen extends StatefulWidget {
  @override
  _AnimatedAlignScreenState createState() => _AnimatedAlignScreenState();
}

class _AnimatedAlignScreenState extends State<AnimatedAlignScreen> {
  var alignment = Alignment.centerLeft;

  @override
  void initState() {
    //_alignment = Alignment.center;

    Timer(const Duration(milliseconds: 10), ()
    {
      setState(() {
        alignment = Alignment.center;
      });
      log("Log message with 2 methods");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
        alignment: alignment,
        duration: const Duration(milliseconds: 200),
        child: Image.asset("assets/images/login/logo_1.png",
            fit: BoxFit.fill)
    );
  }
}
