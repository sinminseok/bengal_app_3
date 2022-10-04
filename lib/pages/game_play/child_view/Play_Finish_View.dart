import 'dart:ui';

import 'package:bengal_app/pages/game_play/child_view/Play_Result_View.dart';
import 'package:bengal_app/utils/dataType.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../common/string_configuration.dart';
import '../../../controller/storage_controller.dart';
import '../../../models/game.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';



class Play_Finish_View extends StatefulWidget {
  Play_Finish_View({Key? key, required this.game}) : super(key: key);

  GameInfo game;

  @override
  _Play_Finish_View createState() => _Play_Finish_View();
}

class _Play_Finish_View extends State<Play_Finish_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppbarColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50.h,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Stack(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                  width: 40.h,
                  height: 40.h,
                  child: Image.asset(
                    "assets/images/common/back_button.png",
                  )),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0.w, 9.h, 0.w, 0.h),
                decoration: BoxDecoration(),
                child: Text(
                  "Play information",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),
            width: 390.w,
            height: 1.h,
            color: Colors.grey.shade300,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 10.h),
            width: 360.w,
            height: 76.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey.shade300)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 15.h, 0.w, 0.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.bolt,
                            color: kCharColor,
                            size: 14.w,
                          ),
                          Text(
                            "Power",
                            style: TextStyle(
                                color: kCharColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0.w, 10.h, 20.w, 0.h),
                        child: Row(
                          children: [
                            Text(
                              "${StorageController().account!.power}",
                              style: TextStyle(color: kCharColor,fontSize: 12.sp),
                            ),
                            Text(
                              " / ${StorageController().commonData.initialInfo.maxPower}",
                              style: TextStyle(color: kCharColor,fontSize: 10.sp),
                            ),
                          ],
                        ))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.w, top: 6.h),
                  child: LinearPercentIndicator(
                    center: Text(
                      "%percentage",
                      style: TextStyle(color: Colors.black, fontSize: 10.sp),
                    ),
                    barRadius: Radius.circular(10),
                    width: 340.w,
                    lineHeight: 15.h,
                    percent: 0.9,
                    progressColor: Color(0xff15BEA0),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),
            width: 360.w,
            height: 92.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey.shade300)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20.w, 0.h, 0.w, 0.h),
                  child: Text(
                    "Today's Earn",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.w, 20.h, 20.w, 0.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                            width: 20.w,
                            height: 20.h,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(6.w, 0.h, 0.w, 0.h),
                            width: 200.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      StringConfiguration().uiString(
                                          UiStringType.TOKEN_NAME_01),
                                      style: Font.lato(
                                          const Color(0xFF8E8E8E),
                                          FontWeight.w700,
                                          12.sp),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 9.w, 0.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            StorageController().miningResultList!.getTodayMiningTotalXPerAmount().asString(),
                                            style: Font.lato(
                                                const Color(0xFF8E8E8E),
                                                FontWeight.w700,
                                                12.sp),
                                          ),
                                          Text(
                                            "/${widget.game.xPerPerDay}",
                                            style: Font.lato(
                                                kPrimaryColor,
                                                FontWeight.w700,
                                                8.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 0.h),
                                  child: LinearPercentIndicator(
                                      barRadius: const Radius.circular(10),
                                      width: 200.w,
                                      padding: EdgeInsets.only(right: 4.w),
                                      lineHeight: 2.h,
                                      percent: 0.4,
                                      progressColor: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 9.h, 0.w, 0.h),

                            child: Image.asset(
                              "assets/images/lobby/icons/appbar_icons/per_icon.png",
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(6.w, 12.h, 0.w, 0.h),
                            width: 200.w,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      StringConfiguration().uiString(
                                          UiStringType.TOKEN_NAME_02),
                                      style: Font.lato(
                                          const Color(0xFFECB133),
                                          FontWeight.w700,
                                          12.sp),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 9.w, 0.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            StorageController().miningResultList!.getTodayMiningTotalPerAmount().asString(),
                                            style: Font.lato(
                                                const Color(0xFFECB133),
                                                FontWeight.w700,
                                                12.sp),
                                          ),
                                          Text(
                                            "/${widget.game.perPerDay}",
                                            style: Font.lato(
                                                const Color(0xFFECB133),
                                                FontWeight.w700,
                                                8.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 0.h),
                                  child: LinearPercentIndicator(
                                    barRadius: const Radius.circular(10),
                                    width: 200.w,
                                    lineHeight: 2.h,
                                    padding: EdgeInsets.only(right: 4.w),
                                    percent: 0.4,
                                    progressColor: const Color(0xFFECB133),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 40.h, 15.w, 0.h),
            width: 360.w,
            height: 150.h,
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(10.w, 25.h, 15.w, 25.h),
                    child: Image.asset(widget.game.gameIconAsset(),
                      width: 100.w,
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(1.w, 44.h, 0.w, 0.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.game.titleString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "00:00:00",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 40.h, 0.w, 0.h),
                child: Text(
                  "Earning Token",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 0.h),
            width: 360.w,
            height: 70.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(17.w, 0.h, 0.w, 0.h),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                        width: 36.w,
                        height: 36.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin:
                              EdgeInsets.fromLTRB(10.w, 15.h, 15.w, 0.h),
                              child: Text(
                                "+${StorageController().miningResultList!.getTodayMiningXPerAmount(widget.game.id).asString()}",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.grey.shade500),
                              )),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.w, 0.h, 15.w, 0.h),
                            child: const Text(
                              "XPER",
                              style:
                              TextStyle(color: Colors.grey, fontSize: 11),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                  height: 50.h,
                  width: 0.1,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                          child: Image.asset(
                            "assets/images/lobby/icons/appbar_icons/per_icon.png",
                            width: 36.w,
                            height: 36.h,
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin:
                              EdgeInsets.fromLTRB(10.w, 15.h, 15.w, 0.h),
                              child: Text(
                                "+${StorageController().miningResultList!.getTodayMiningPerAmount(widget.game.id).asString()}",
                                style: const TextStyle(fontSize: 17, color: kPerColor),
                              )),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
                            child: const Text(
                              "PER",
                              style:
                              TextStyle(color: Colors.grey, fontSize: 11),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             InkWell(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Container(
                 margin: EdgeInsets.fromLTRB(0.w, 92.h, 0.w, 0.h),

                 width: 175.w,
                 height: 46.h,
                 child: Image.asset("assets/images/game/back_to_game_button.png"),
               ),
             ),
             InkWell(
               onTap: (){
                 Navigator.push(
                     context,
                     PageTransition(
                         type: PageTransitionType.fade,
                         child: Play_Result_View(game: widget.game)));
               },
               child: Container(
                 margin: EdgeInsets.fromLTRB(10.w, 92.h, 0.w, 0.h),

                 child: Image.asset("assets/images/game/finish_button.png",width: 175.w,
                   height: 46.h,),
               ),
             )
           ],
         )
        ],
      ),
    );
  }
}
