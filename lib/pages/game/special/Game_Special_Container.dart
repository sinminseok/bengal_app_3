import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../controller/assets_controller.dart';
import '../../../models/game.dart';
import '../../../types/common.dart';
import '../../../types/constants.dart';
import '../../../utils/font.dart';

Widget Game_Special_Container(GameInfo game) {
  //event 처리
  return InkWell(

    onTap: (){
      print("event");
      //발생시킬 EVENT 삽입
    },
    child: Container(
      margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
      //width: 360.w,
      //height: 175.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 18.h, 0.w, 0.h),
            //height: 70.w,
            child: Row(
              children: [
                Container(
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
                Container(
                  margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 240.w,
                        margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 137.w,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                game.titleString(),
                                style: Font.lato(const Color(0xFF342B35),
                                    FontWeight.bold, 20.sp),
                              ),
                            ),
                            Text(
                              game.limitAtString(),
                              style: Font.lato(
                                  kPrimaryColor, FontWeight.w400, 10.sp),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),
                        child: Row(
                          children: [
                            Image.asset(
                              AssetsController().getCoinIcon(CoinType.XPer),
                              width: 16.w,
                              height: 16.h,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                              child: Text(
                                game.xPerPerPowerString(),
                                style: Font.lato(
                                    Colors.grey, FontWeight.w700, 10.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),
                        child: Row(
                          children: [
                            Image.asset(
                              AssetsController().getCoinIcon(CoinType.Per),
                              width: 16.w,
                              height: 16.h,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                              child: Text(
                                game.perPerPowerString(),
                                style:
                                    Font.lato(kPerColor, FontWeight.w700, 10.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 8.h, 15.w, 0.h),
            width: 330.w,
            height: 1.h,
            color: Colors.grey.shade300,
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 8.h, 15.w, 0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //margin: EdgeInsets.fromLTRB(15.w, 8.h, 0.w, 0.h),
                      //width: 93.w,
                      height: 18.h,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: Text(
                        game.categoryNCarLevelString(),
                        style: Font.lato(
                            const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 0.h),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/game/icons/car1.png",
                            color: game.carColorToType(1),
                            width: 23.w,
                          ),
                          Image.asset(
                            "assets/images/game/icons/car2.png",
                            color: game.carColorToType(2),
                            width: 23.w,
                          ),
                          Image.asset(
                            "assets/images/game/icons/car3.png",
                            color: game.carColorToType(3),
                            width: 23.w,
                          ),
                          Image.asset(
                            "assets/images/game/icons/car4.png",
                            color: game.carColorToType(4),
                            width: 23.w,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.w, 7.h, 0.w, 0.h),
                width: 360.w,
                height: 46.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.grey.shade300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 3.h, 0.w, 0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mine",
                            style: Font.lato(
                                const Color(0xFF746F7B), FontWeight.bold, 14.sp),
                          ),
                          Text(
                            game.perPerDayString(),
                            style: Font.lato(
                                const Color(0xFFD8B66C), FontWeight.w400, 10.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(1.w, 1.h, 10.w, 0.h),
                            child: Image.asset(
                              AssetsController().getCoinIcon(CoinType.Per),
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                          Text(
                            "${game.depositPer} Per",
                            style: Font.lato(
                                const Color(0xFF342B35), FontWeight.bold, 16.sp),
                          ),
                        ],
                      ),
                    )
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
