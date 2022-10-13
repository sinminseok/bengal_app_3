import 'package:bengal_app/controller/storage_controller.dart';
import 'package:bengal_app/pages/lobby/popup/special_box_open_item.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/game.dart';
import "../../../utils/font.dart";

class SpecialBoxOpenResult {
  void popup(BuildContext context, MiningBox box) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SpecialBoxOpenItem().show(context, "assets/images/lobby/boxes/ico_gem_red_s.png", "Lv1", "Red Gem", 1),
                    SpecialBoxOpenItem().show(context, "assets/images/lobby/boxes/ico_rankup.png", "Level up", "Chip", 2),
                  ],
                ),
                Image.asset("assets/images/lobby/boxes/box_special.png",
                  width: 150.w,
                  height: 168.h,),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                    MaterialStateProperty.all(Colors.black45.withOpacity(0)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20.h),
                    width: 175.w,
                    height: 46.h,
                    decoration: const BoxDecoration(
                        color: Color(0xFFE4E4E4),
                        borderRadius:
                        BorderRadius.all(Radius.circular(35))),
                    child: Center(
                      child: Text(
                        "CONFIRM",
                        style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 14.sp),
                      ),
                    ),
                  ),
                ),
                ]
            ),
          );
        });
  }
}
