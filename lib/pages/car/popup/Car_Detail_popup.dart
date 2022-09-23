import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../types/constants.dart';
import '../../../utils/font.dart';
import '../widget/Car_info_Card.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

class Car_Detail_popup {
  ScrollController _scrollController = ScrollController();

  void showDialog_view_button(Size size, BuildContext context) {
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
            child: DefaultTextStyle(
                style: TextStyle(fontSize: 16, color: Colors.black),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        bottom: 500.h,
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
                        height: 500.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 300.w,
                              height: 55.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: kPrimaryColor),
                              child: Center(
                                  child: Text(
                                "MINT INFORMATION",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(10.w, 10.h, 180.w, 0.h),
                              child: Text("Minted From"),
                            ),
                            Row(
                              children: [
                                Car_info_Card(size, Colors.red, context,
                                    "SPORTS", "rare", 12345),
                                Car_info_Card(size, Colors.red, context,
                                    "SPORTS", "rare", 12345),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 10.h),
                              width: 260.w,
                              height: 1.h,
                              color: Colors.grey.shade500,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 0.h, 200.w, 0.h),
                              child: Text("Mints"),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 30.h),
                              width: 280.w,
                              height: 160.h,
                              child: VsScrollbar(
                                controller: _scrollController,
                                showTrackOnHover: true,
                                // default false
                                isAlwaysShown: true,
                                style: VsScrollbarStyle(
                                  hoverThickness: 10.0,
                                  // default 12.0
                                  radius: Radius.circular(10),
                                  // default Radius.circular(8.0)
                                  thickness: 10.h,
                                  // [ default 8.0 ]
                                  color: Colors.grey
                                      .shade400, // default ColorScheme Theme
                                ),
                                //
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Car_info_Card(size, Colors.red, context,
                                        "SPORTS", "epic", 12345),
                                    Car_info_Card(size, Colors.red, context,
                                        "SPORTS", "epic", 12345),
                                    Car_info_Card(size, Colors.red, context,
                                        "SPORTS", "epic", 12345),
                                    Car_info_Card(size, Colors.red, context,
                                        "SPORTS", "epic", 12345),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                )),
          );
        });
  }

  void Levelup_popup(BuildContext context) {
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Center(
          child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: Colors.black),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Positioned(
                  //     bottom: 500.h,
                  //     left: 265.w,
                  //     child: GestureDetector(
                  //         onTap: (){
                  //           Navigator.pop(context);
                  //         },
                  //         child: Image.asset("assets/images/common/cancel_button.png",width: 40.w,))),

                  Container(
                      width: 300.w,
                      height: 730.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 300.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                              "LEVEL UP",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                          ),
                          Container(
                            width: 300.w,
                            height: 180.h,
                            child: Image.asset(
                              "assets/images/common/cars/car1.png",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  margin:
                                      EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 0.h),
                                  child: Text(
                                    "Lv 4",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 16),
                                  )),
                              Container(
                                  margin:
                                      EdgeInsets.fromLTRB(3.w, 10.h, 3.w, 0.h),
                                  child: Image.asset(
                                    "assets/images/common/play_button.png",
                                    width: 20.w,
                                    height: 20.h,
                                  )),
                              Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 0.h),
                                  child: Text(
                                    "Lv 4",
                                    style: TextStyle(
                                        color: kPrimaryColor, fontSize: 16),
                                  )),
                            ],
                          ),
                          Center(
                            child: Text(
                              "Time taken 6h 55m",
                              style:
                                  TextStyle(color: kPrimaryColor, fontSize: 14),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.fromLTRB(15.w, 30.h, 170.w, 10.h),
                            child: Text(
                              "Level up Cost",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 15),
                            ),
                          ),
                          Container(
                            width: 260.w,
                            height: 110.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 10.h, 15.w, 0.h),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                          Text("XPER")
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        child: Text("20.0"))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 10.h, 15.w, 0.h),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/lobby/icons/appbar_icons/per_icon.png",
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                          Text("PER")
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        child: Text("20.0"))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 10.h, 15.w, 0.h),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                          Text("XPER")
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        child: Text("20.0"))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.fromLTRB(15.w, 30.h, 170.w, 10.h),
                            child: Text(
                              "Level 5 Unlock",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 15),
                            ),
                          ),
                          Container(
                            width: 260.w,
                            height: 80.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        child: Text(
                                          "Acquire status",
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 15),
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        width: 32.w,
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple.shade50,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        child: Center(
                                            child: Text(
                                          "+4",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 10),
                                        )))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        child: Text(
                                          "1st Gem scoket",
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 15),
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        width: 48.w,
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple.shade50,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        child: Center(
                                            child: Text(
                                          "OPEN",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              Levelup_popup2(context);
                            },
                            child: Container(
                              width: 120.w,
                              height: 34.h,
                              margin:
                                  EdgeInsets.fromLTRB(15.w, 50.h, 15.w, 0.h),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Center(
                                child: Text(
                                  "Confirm",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              )),
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }

  void Levelup_popup2(BuildContext context) {
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Center(
          child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: Colors.black),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Positioned(
                  //     bottom: 500.h,
                  //     left: 265.w,
                  //     child: GestureDetector(
                  //         onTap: (){
                  //           Navigator.pop(context);
                  //         },
                  //         child: Image.asset("assets/images/common/cancel_button.png",width: 40.w,))),

                  Container(
                      width: 300.w,
                      height: 480.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 300.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                              "LEVEL UP",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                          ),
                          Container(
                            width: 300.w,
                            height: 180.h,
                            child: Image.asset(
                              "assets/images/common/cars/car1.png",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  margin:
                                      EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 0.h),
                                  child: Text(
                                    "Lv 4",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 16),
                                  )),
                              Container(
                                  margin:
                                      EdgeInsets.fromLTRB(3.w, 10.h, 3.w, 0.h),
                                  child: Image.asset(
                                    "assets/images/common/play_button.png",
                                    width: 20.w,
                                    height: 20.h,
                                  )),
                              Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 0.h),
                                  child: Text(
                                    "Lv 4",
                                    style: TextStyle(
                                        color: kPrimaryColor, fontSize: 16),
                                  )),
                            ],
                          ),
                          Container(
                              margin:
                                  EdgeInsets.fromLTRB(15.w, 10.h, 200.w, 0.h),
                              child: Text(
                                "Leveling",
                                style: TextStyle(color: Colors.grey.shade700),
                              )),
                          Container(
                            margin: EdgeInsets.fromLTRB(20.w, 10.h, 15.w, 0.h),
                            child: Center(
                              child: LinearPercentIndicator(
                                //추후 퍼센트 데이터 가져오면 넣어줄 것
                                center: Text("65.50%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13)),
                                barRadius: const Radius.circular(10),
                                width: 260.w,
                                lineHeight: 20.h,
                                percent: 0.7,
                                progressColor: kPrimaryColor,
                                padding: const EdgeInsets.only(top: 0),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                            child: Text(
                              "Reamaing Time",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 12),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                            child: Text(
                              "TIME",
                              style:
                                  TextStyle(color: kPrimaryColor, fontSize: 20),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              Levelup_popup3(context);
                            },
                            child: Container(
                              width: 120.w,
                              height: 34.h,
                              margin:
                                  EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.h),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Center(
                                child: Text(
                                  "Boost",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              )),
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }

  void Levelup_popup3(BuildContext context) {
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Center(
          child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: Colors.black),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Positioned(
                  //     bottom: 500.h,
                  //     left: 265.w,
                  //     child: GestureDetector(
                  //         onTap: (){
                  //           Navigator.pop(context);
                  //         },
                  //         child: Image.asset("assets/images/common/cancel_button.png",width: 40.w,))),

                  Container(
                      width: 300.w,
                      height: 420.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 300.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                              "LEVEL UP",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                          ),
                          Container(
                            width: 300.w,
                            height: 180.h,
                            child: Image.asset(
                              "assets/images/common/cars/car1.png",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  margin:
                                      EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 0.h),
                                  child: Text(
                                    "Lv 4",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 16),
                                  )),
                              Container(
                                  margin:
                                      EdgeInsets.fromLTRB(3.w, 10.h, 3.w, 0.h),
                                  child: Image.asset(
                                    "assets/images/common/play_button.png",
                                    width: 20.w,
                                    height: 20.h,
                                  )),
                              Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 0.h),
                                  child: Text(
                                    "Lv 4",
                                    style: TextStyle(
                                        color: kPrimaryColor, fontSize: 16),
                                  )),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cost",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 14),
                                ),
                                Text(
                                  "Needed for next level",
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                            width: 260.w,
                            height: 47.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        10.w, 3.h, 15.w, 0.h),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                        ),
                                        Text(
                                          "XPER",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 12),
                                        )
                                      ],
                                    )),
                                Container(
                                  margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                                  child: Text("20.0",style: TextStyle(color: Colors.grey.shade600,fontSize: 12,fontWeight: FontWeight.bold),),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 120.w,
                              height: 34.h,
                              margin:
                                  EdgeInsets.fromLTRB(1.w, 20.h, 15.w, 1.h),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Center(
                                child: Text(
                                  "Boost",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              )),
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }
}
