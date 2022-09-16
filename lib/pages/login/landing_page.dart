import "dart:async";
import "package:bengal_app/pages/login/login_page.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "../../utils/relative_coordinate.dart";
import "widget/landing_logo_widget.dart";

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 2000), () {
      Get.offAll(const LoginPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8B80F8),
      body: Stack(children: [
        Image.asset(
          "assets/images/login/bg_start_1.png",
          width: RelativeCoordinate().getX(PageType.login, context, 390),
          height: RelativeCoordinate().getY(PageType.login, context, 564),
          alignment: Alignment.topCenter,
          fit: BoxFit.fill,
        ),
        const LandingLogoWidget()
      ]),
    );
  }
}
