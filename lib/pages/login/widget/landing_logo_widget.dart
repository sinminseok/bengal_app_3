import "dart:async";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class LandingLogoWidget extends StatefulWidget {
  const LandingLogoWidget({Key? key}) : super(key: key);

  @override
  LandingLogoWidgetState createState() => LandingLogoWidgetState();
}

class LandingLogoWidgetState extends State<LandingLogoWidget> {
  var _alignment = Alignment.centerLeft;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 10), () {
      setState(() {
        _alignment = Alignment.center;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
        alignment: _alignment,
        duration: const Duration(milliseconds: 500),
        child:
            Image.asset("assets/images/login/logo_1.png", fit: BoxFit.fill));
  }
}
