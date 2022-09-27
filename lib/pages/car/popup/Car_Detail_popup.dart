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
                        bottom: 440.h,
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
                        height: 440.h,
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
                                        color: Colors.white, fontSize: 14),
                                  )),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin:
                                  EdgeInsets.fromLTRB(10.w, 20.h, 0.w, 0.h),
                                  child: Text("Minted From",style: TextStyle(fontSize: 14),),
                                ),
                                SizedBox()
                              ],
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
                              margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
                              width: 260.w,
                              height: 1.h,
                              color: Colors.grey.shade300,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 15.h, 244.w, 0.h),
                              child: Text("Mints",style: TextStyle(fontSize: 14),),
                            ),
                            Container(
                              margin:
                              EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                              width: 280.w,
                              height: 123.h,
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


}
