import "dart:async";
import "package:bengal_app/pages/login/login_page.dart";
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:get/get.dart";
import 'package:video_player/video_player.dart';
import "widget/landing_logo_widget.dart";

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  final VideoPlayerController controller = VideoPlayerController.asset('assets/mp4/Perplay_intro.mp4');

  @override
  void initState() {
    super.initState();

    controller.initialize().then((value){
      setState(() {
        controller.play();
      });
    });

    Timer(const Duration(milliseconds: 2000), () {
      controller.pause();
      Get.offAll(const LoginPage());
    });
  }

  @override
  void dispose() {
    controller.pause();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VideoPlayer(controller),
    );
    // return Scaffold(
    //   backgroundColor: const Color(0xFF8B80F8),
    //   body: Stack(children: [
    //     Image.asset(
    //       "assets/images/login/bg_start_1.png",
    //       width: 390.w,
    //       height: 564.h,
    //       alignment: Alignment.topCenter,
    //       fit: BoxFit.fill,
    //     ),
    //     const LandingLogoWidget()
    //   ]),
    // );
  }
}
