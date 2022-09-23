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
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(150.w, 3.h, 5.w, 0.h),
                child: Text("Result",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [

              Container(
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                width: 370.w,
                height: 50.h,
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
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 3.h),
                width: 360.w,
                height: 420.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.timelapse_sharp,
                                    color: Colors.grey.shade700,
                                    size: 17,
                                  ),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(5.w, 0.h, 4.w, 0.h),
                                      child: Text("Play Time",style: TextStyle(fontSize: 12),))
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.w,10.h, 0.w, 0.h),
                                child: Text(
                                  "01:23:59",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/game/game_img.png",
                                width: 80.w,
                                height: 90.h,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.w,10.h, 0.w, 0.h),
                                child: Text(
                                  "Game Name",
                                  style: TextStyle(
                                      fontSize: 19, fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.offline_bolt,
                                    color: Colors.grey.shade700,
                                    size: 17,
                                  ),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(5.w, 0.h, 15.w, 0.h),



                                      child: Text(

                                    "Power",style: TextStyle(fontSize: 12),))
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.w,7.h, 0.w, 0.h),
                                child: Text(
                                  "01:23:59",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset("assets/images/game/line.png"),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 10.h, 270.w, 10.h),

                      child: Text(
                        "Earned",
                        style: TextStyle(color: Colors.grey.shade600,fontSize: 18,fontWeight: FontWeight.bold),
                      ),
                    ),
                    //double xper_value,double per_value,int special_box_lv,int special_box_value
                    Earned_Widget(20.0,00.0,1,"1EA"),

                  ],
                ),
              ),
              FadeIn(
                duration: Duration(milliseconds: 600),
                curve: Curves.easeIn,
                child: Result_Car_info_widget()
              )

            ],
          ),
          FadeIn(
            child: Container(
              width: 176.w,
              height: 50.h,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: Frame_View(

                            )));
                  },
                  child: Image.asset("assets/images/game/lobby_button.png")),
            ),
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
