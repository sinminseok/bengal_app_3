import "package:flutter/material.dart";
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../controller/game_launcher.dart';
import '../../../models/game.dart';
import '../../../types/constants.dart';
import "../../../utils/font.dart";

class GameInstallNotice {

  void popup(BuildContext context, GameInfo game) {

    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              content: DefaultTextStyle(
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          bottom: 350.h,
                          left: 265.w,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                "assets/images/common/cancel_button.png",
                                width: 40.w,
                              ))),
                      Container(
                          width: 300.w,
                          height: 344.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 300.w,
                                height: 50.h,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    color: kPrimaryColor),
                                child: Center(
                                    child: Text(
                                      "NOTICE",
                                      style: Font.lato(Colors.white, FontWeight.bold, 18.sp),
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15.w, 70.h, 15.w, 5.h),
                                child: Text("This game is not installed on your device.",
                                  style: Font.lato(Colors.grey.shade500, FontWeight.w400, 12.sp),
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 20.h, 0.w, 0.h),
                                  child: Text("Do you want to go to the",
                                    style: Font.lato(Colors.grey.shade500, FontWeight.w400, 12.sp),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 5.h),
                                child: Text("Google Play Store to install this game?",
                                  style: Font.lato(Colors.grey.shade500, FontWeight.w400, 12.sp),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.fromLTRB(0.w, 60.h, 0.w, 0.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 100.w,
                                        height: 34.h,
                                        //margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: kPrimaryColor),borderRadius: const BorderRadius.all(
                                                Radius.circular(30))),
                                        child: Center(
                                          child: Text(
                                            "No",
                                            style: Font.lato(kPrimaryColor, FontWeight.bold, 14.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        GameLauncher().openApp(game);
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: 100.w,
                                        height: 34.h,
                                        //margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                                        decoration: const BoxDecoration(
                                            color: kPrimaryColor,
                                            borderRadius: BorderRadius.all(Radius.circular(30))),
                                        child: Center(
                                          child: Text(
                                            "Yes",
                                            style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  )),
            );
          },
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }
}
