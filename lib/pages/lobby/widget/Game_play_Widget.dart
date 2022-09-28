import 'package:bengal_app/pages/game_play/Play_Information_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../../../Controller/game_launcher.dart';
import '../../../common/string_configuration.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';

Widget Game_Play_Widget(Size size,BuildContext context, String title, String xper_value,
    String per_value, String ultimate_value) {
  return InkWell(
    onTap: (){
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              child: Play_information_View(

              )));
    },
    child: Container(
      margin: EdgeInsets.fromLTRB(0.w, 10.h, 5.w, 0.h),

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
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),

                child: Image.asset(
                  "assets/images/lobby/game_img.png",
                  width: 70.w,
                  height: 70.h,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   height: size.height * 0.02,
                  // ),
                  Container(
                    margin: EdgeInsets.fromLTRB(7.w, 8.h, 0.w, 6.h),

                    child: Text(
                      "$title",
                      style:
                      Font.lato(const Color(0xFF342B35), FontWeight.bold, 18.sp),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(7.w, 0.h, 0.w, 0.h),

                        child: Image.asset(
                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                          width: 14.w,
                          height: 14.h,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),

                        child: Text(

                          "+ $xper_value  XPER",
                          style: Font.lato(
                              const Color(0xFF302F85), FontWeight.bold, 10.sp),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),

                        child: Image.asset(
                          "assets/images/lobby/icons/appbar_icons/per_icon.png",
                          width: 14.w,
                          height: 14.h,
                        ),
                      ),
                      Text(
                        "+ $per_value  PER",
                        style: Font.lato(
                            const Color(0xFFD8B66C), FontWeight.bold, 10.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10.w, 10.h, 0.w, 0.h),

                        width: 70.w,
                        height: 16.h,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Ultimate  Lv $ultimate_value",
                            style: Font.lato(
                                const Color(0xFF746F7B), FontWeight.bold, 8.sp),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(5.w, 9.h, 0.w, 0.h),
                          width: 21.58,
                          height: 8.87.h,

                          child: Image.asset("assets/images/game/empty_car/empty_car1.png",fit: BoxFit.fill,)),
                      Container(
                          margin: EdgeInsets.fromLTRB(5.w, 9.h, 0.w, 0.h),
                          width: 21.58,
                          height: 8.87.h,

                          child: Image.asset("assets/images/game/empty_car/empty_car2.png",fit: BoxFit.fill,)),
                      Container(
                          margin: EdgeInsets.fromLTRB(5.w, 9.h, 0.w, 0.h),
                          width: 21.58,
                          height: 8.87.h,

                          child: Image.asset("assets/images/game/empty_car/empty_car3.png",fit: BoxFit.fill,)),
                      Container(
                          margin: EdgeInsets.fromLTRB(5.w, 9.h, 0.w, 0.h),
                          width: 21.58,
                          height: 8.87.h,

                          child: Image.asset("assets/images/game/empty_car/empty_car4.png",fit: BoxFit.fill,)),
                    ],
                  ),
                ],
              ),
            ],
          ),


          InkWell(
            onTap: (){
              GameLauncher().openApp('com.kakaogames.umamusume');
            },
            child: Container(
              width: 60.w,
              height: 60.h,
              margin: EdgeInsets.fromLTRB(0.w, 5.h, 15.w, 0.h),

              child: Image.asset(
                "assets/images/lobby/game_play_button.png",

              ),
            ),
          ),
        ],
      ),
    ),
  );
}
