import 'package:bengal_app/controller/storage_controller.dart';
import 'package:bengal_app/pages/game_play/Play_Information_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';
import 'package:usage_stats/usage_stats.dart';
import '../../../common/string_configuration.dart';
import '../../../controller/game_launcher.dart';
import '../../../controller/permission_controller.dart';
import '../../../models/game.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';
import '../../game/popup/game_install_notice.dart';

Widget Game_Play_Widget(Size size, BuildContext context, GameInfo game) {
  return InkWell(
    onTap: () {
      // Navigator.push(
      //     context,
      //     PageTransition(
      //         type: PageTransitionType.fade,
      //         child: const Play_information_View()));
    },
    child: Container(
      margin: EdgeInsets.fromLTRB(5.w, 0.h, 5.w, 0.h),
      width: 360.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kPrimaryColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 0.h, 7.w, 0.h),
            width: 64.w,
            height: 64.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topLeft,
                  fit: BoxFit.fill,
                  image: AssetImage(game.gameIconAsset())),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.w, 12.h, 0.w, 0.h),
            width: 185.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    game.titleString(),
                    style: Font.lato(
                        const Color(0xFF342B35), FontWeight.bold, 18.sp),
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  children: [
                    game.xPerPerPower == 0.0?Container(): Image.asset(
                      "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                      width: 14.w,
                      height: 14.h,
                    ),
                    game.xPerPerPower == 0.0?Container(): Container(
                      margin: EdgeInsets.fromLTRB(1.w, 0.h, 0.w, 0.h),
                      child: Text(
                        "+${game.xPerPerPower} XPER",
                        style: Font.lato(
                            const Color(0xFF302F85), FontWeight.bold, 10.sp),
                      ),
                    ),
                    game.perPerPower == 0.0?Container():Container(
                      margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
                      child: Image.asset(
                        "assets/images/lobby/icons/appbar_icons/per_icon.png",
                        width: 14.w,
                        height: 14.h,
                      ),
                    ),
                    game.perPerPower == 0.0?Container():Container(
                      margin: EdgeInsets.fromLTRB(1.w, 0.h, 0.w, 0.h),
                      child: Text(
                        "+${game.perPerPower} PER",
                        style: Font.lato(
                            const Color(0xFFD8B66C), FontWeight.bold, 10.sp),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        //width: 70.w,
                        height: 16.h,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(8.w, 0.h, 8.w, 0.h),
                          child: Center(
                            child: Text(
                              "${game.carGradeString()}    Lv ${game.minCarLevel}",
                              style: Font.lato(const Color(0xFF746F7B),
                                  FontWeight.bold, 8.sp),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                          //width: 108.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/game/empty_car/empty_car2.png",
                                color: game.carColorToType(1),
                                fit: BoxFit.fill,
                                width: 25.67.w,
                                height: 14.h,
                              ),
                              Image.asset(
                                "assets/images/game/empty_car/empty_car3.png",
                                color: game.carColorToType(2),
                                fit: BoxFit.fill,
                                width: 25.67.w,
                                height: 14.h,
                              ),
                              Image.asset(
                                "assets/images/game/empty_car/empty_car1.png",
                                color: game.carColorToType(3),
                                fit: BoxFit.fill,
                                width: 25.67.w,
                                height: 14.h,
                              ),
                              Image.asset(
                                "assets/images/game/empty_car/empty_car4.png",
                                color: game.carColorToType(4),
                                fit: BoxFit.fill,
                                width: 25.67.w,
                                height: 14.h,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 60.w,
            height: 60.h,
            margin: EdgeInsets.fromLTRB(0.w, 0.h, 1.w, 0.h),
            child: InkWell(
              onTap: () {
                if (!StorageController().isPossibleMining(game)) {
                  Fluttertoast.showToast(
                      msg: StringConfiguration()
                          .uiString(UiStringType.TOAST_MESSAGE_06),
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      gravity: ToastGravity.CENTER);
                } else {
                  GameLauncher()
                      .isAppInstalled(game.packageName)
                      .then((value) => {
                            if (value)
                              {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        child:
                                            Play_information_View(game: game)))
                              }
                            else
                              {GameInstallNotice().popup(context, game)}
                          });
                }
                Lottie.asset(
                  'assets/LottieLogo1.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                );
              },
              child: Image.asset("assets/images/lobby/game_play_button.png"),
            ),
          ),
        ],
      ),
    ),
  );
}
