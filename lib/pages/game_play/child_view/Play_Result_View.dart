import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import '../../../common/string_configuration.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';
import '../../frame/Frame_View.dart';
import '../widget/Earned_widget.dart';
import '../widget/Result_Car_info_widget.dart';

class Play_Result_View extends StatefulWidget {
  const Play_Result_View({Key? key}) : super(key: key);

  @override
  _Play_Result_View createState() => _Play_Result_View();
}

class _Play_Result_View extends State<Play_Result_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppbarColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60.h,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(150.w, 3.h, 5.w, 0.h),
              child: Text("Result",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                width: 390.w,
                height: 1.h,
                color: Colors.grey.shade300,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 3.h),
                    width: 360.w,
                    height: 435.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0.w, 60.h, 0.w, 0.h),
                          child: Row(
                            children: [
                              Container(
                                width: 100.w,
                                margin:
                                    EdgeInsets.fromLTRB(23.5.w, 0.h, 0.w, 0.h),
                                child: Column(
                                  children: [
                                    Row(children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            5.w, 0.h, 3.w, 0.h),
                                        child: Icon(
                                          Icons.timelapse_sharp,
                                          color: Colors.grey.shade700,
                                          size: 17,
                                        ),
                                      ),
                                      Text(
                                        "Play Time",
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 12),
                                      )
                                    ]),
                                    Text(
                                      "01:23:58",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/game/game_img.png",
                                    width: 80.w,
                                    height: 90.h,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0.w, 6.h, 0.w, 0.h),
                                    child: Text(
                                      "Game Name",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: 100.w,
                                margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                                child: Column(
                                  children: [
                                    Row(children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            16.w, 0.h, 3.w, 0.h),
                                        child: Icon(
                                          Icons.offline_bolt,
                                          color: Colors.grey.shade700,
                                          size: 17,
                                        ),
                                      ),
                                      Text(
                                        "Power",
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 12),
                                      )
                                    ]),
                                    Text(
                                      "01:23:58",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(
                                20.5.w, 19.5.h, 20.5.w, 0.h),
                            child: Image.asset("assets/images/game/line.png")),

                        Container(
                            margin: EdgeInsets.fromLTRB(20.w, 20.5.h, 0.w, 5.h),
                            child: Row(
                              children: [
                                Text(
                                  "Earned",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        //double xper_value,double per_value,int special_box_lv,int special_box_value
                        Earned_Widget(20.0, 00.0, 1, "1EA"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
                    width: 360.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "PLAY GAME",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              FadeIn(
                  duration: Duration(milliseconds: 600),
                  curve: Curves.easeIn,
                  child: Result_Car_info_widget())
            ],
          ),
          FadeIn(
            child: Container(
                margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.h),
                width: 175.w,
                height: 46.h,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: Frame_View()));
                    },
                    child: Image.asset("assets/images/game/lobby_button.png"))),
            // Optional paramaters
            duration: Duration(milliseconds: 3000),
            curve: Curves.easeIn,
          ),

          //Animation Widget
        ],
      ),
    );
  }
}
