import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "../../../common/string_configuration.dart";
import "../../../types/string_type.dart";
import "../../../utils/font.dart";

class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({Key? key, required this.scrollKey}) : super(key: key);

  final GlobalKey scrollKey;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/login/bg_start_2.png",
        width: 390.w,
        height: 300.h,
        alignment: Alignment.topCenter,
        fit: BoxFit.fill,
      ),
      Positioned(
        key: scrollKey,
        left: 0.w,
        top: 100.h,
        child: const Text(""),
      ),
      Positioned(
        left: 30.w,
        top: 214.h,
        width: 192.w,
        height: 30.h,
        child: Image.asset(
          "assets/images/login/logo_2.png",
          fit: BoxFit.fill,
        ),
      ),
      Positioned(
        left: 30.w,
        top: 253.h,
        child: Text(
          StringConfiguration().uiString(UiStringType.LOGIN_13),
          style: Font.lato(const Color(0xFFC2BAFF), FontWeight.w400, 14.sp),
        ),
      ),
    ]);
  }
}
