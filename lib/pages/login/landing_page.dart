import "dart:async";
import 'package:bengal_app/pages/frame/Frame_View.dart';
import "package:bengal_app/pages/login/login_page.dart";
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:get/get.dart";
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
    // Timer(const Duration(milliseconds: 2000), () {
    //   Get.offAll(const Frame_View());
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8B80F8),
      body: Stack(children: [
        Image.asset(
          "assets/images/login/bg_start_1.png",
          width: 390.w,
          height: 564.h,
          alignment: Alignment.topCenter,
          fit: BoxFit.fill,
        ),
        const LandingLogoWidget()
      ]),
    );
  }
}
