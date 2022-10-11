import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/string_configuration.dart';
import '../../../controller/assets_controller.dart';
import '../../../controller/storage_controller.dart';
import '../../../models/game.dart';
import '../../../types/common.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';
import '../../../controller/game_launcher.dart';
import '../../game_play/Play_Information_View.dart';

Widget Game_Recommended_Container(BuildContext context, GameInfo game) {
  return  InkWell(
    onTap: (){
      if (!StorageController().isPossibleMining(game)) {
        Fluttertoast.showToast(
            msg: StringConfiguration().uiString(UiStringType.TOAST_MESSAGE_06),
            backgroundColor: Colors.white,
            textColor: Colors.black,
            gravity: ToastGravity.CENTER);
      } else {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade,
                child: Play_information_View(game: game)));
      }
    },
    child: Container(
        margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
        width: 360.w,
        height: 100.h,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [

            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 15.h, 0.w, 0.h),

                  child: Container(
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment:Alignment.topLeft,
                          fit: BoxFit.fill,
                          image: AssetImage(game.gameIconAsset())),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(10.w, 15.h, 0.w, 0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        game.titleString(),
                        style: Font.lato(const Color(0xFF342B35), FontWeight.bold, 18.sp),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AssetsController().getCoinIcon(CoinType.XPer),
                            width: 16.w,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(3.88.w, 3.h, 0.w, 0.h),

                            child: Text(
                              game.xPerPerPowerString(),
                              style: Font.lato(const Color(0xFF8E8E8E), FontWeight.bold, 12.sp),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 250.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(1.w, 5.h, 0.w, 0.h),

                              width: 93.w,
                              height: 18.h,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: const BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                  child: Text(
                                    game.gradeNCarLevelString(),
                                    style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                                  )),
                            ),

                            Container(
                              margin: EdgeInsets.fromLTRB(1.w, 5.h, 0.w, 0.h),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/game/icons/car1.png",
                                    color: game.carColorToType(1),
                                    width: 25.w,
                                    height: 15.h,
                                  ),
                                  Image.asset(
                                    "assets/images/game/icons/car2.png",
                                    color: game.carColorToType(2),
                                    width: 25.w,
                                    height: 15.h,
                                  ),
                                  Image.asset(
                                    "assets/images/game/icons/car3.png",
                                    color: game.carColorToType(3),
                                    width: 25.w,
                                    height: 15.h,
                                  ),
                                  Image.asset(
                                    "assets/images/game/icons/car4.png",
                                    color: game.carColorToType(4),
                                    width: 25.w,
                                    height: 15.h,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
  );
}
