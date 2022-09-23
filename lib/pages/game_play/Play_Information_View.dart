import 'dart:ui';

import 'package:bengal_app/pages/game_play/child_view/Play_Finish_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../common/string_configuration.dart';
import '../../types/constants.dart';
import '../../types/string_type.dart';
import '../../utils/font.dart';

class Play_information_View extends StatefulWidget {
  const Play_information_View({Key? key}) : super(key: key);

  @override
  _Play_information_ViewState createState() => _Play_information_ViewState();
}

class _Play_information_ViewState extends State<Play_information_View> {
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
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "assets/images/common/back_button.png",
                  width: 40.w,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70.w, 3.h, 55.w, 0.h),
                child: Text("Play information",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
            width: 360.w,
            height: 84.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey.shade300)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 3.w, 0.h),
                        child: Icon(
                          Icons.bolt,
                          color: kCharColor,
                        )),
                    Text(
                      "Power",
                      style: TextStyle(
                          color: kCharColor, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(220.w, 13.h, 3.w, 0.h),
                        child: Text(
                          "valye",
                          style: TextStyle(color: kCharColor),
                        ))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.w, top: 10.h),
                  child: LinearPercentIndicator(
                    center: Text(
                      "",
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                    barRadius: Radius.circular(10),
                    width: 320.w,
                    lineHeight: 15.h,
                    percent: 0.9,
                    progressColor: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
            width: 360.w,
            height: 100.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey.shade300)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                  child: Text(
                    "Today's Earn",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 23.h, 1.w, 0.h),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                width: 20.w,
                                height: 20.h,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 6.h),
                                width: 200.w,
                                child: Column(
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
                                        Text(
                                          "100/200",
                                          style: Font.lato(
                                              const Color(0xFF8E8E8E),
                                              FontWeight.w700,
                                              12.sp),
                                        ),
                                      ],
                                    ),
                                    LinearPercentIndicator(
                                      barRadius: const Radius.circular(10),
                                      width: 200.w,
                                      lineHeight: 2.h,
                                      percent: 0.7,
                                      progressColor: Colors.grey,
                                      padding: const EdgeInsets.only(top: 0),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12.h),
                                child: Image.asset(
                                  "assets/images/lobby/icons/appbar_icons/per_icon.png",
                                  width: 20.w,
                                  height: 20.h,
                                ),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.fromLTRB(6.w, 12.h, 0.w, 0.h),
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
                                        Text(
                                          "0.32/2.0",
                                          style: Font.lato(
                                              const Color(0xFFECB133),
                                              FontWeight.w700,
                                              12.sp),
                                        ),
                                      ],
                                    ),
                                    LinearPercentIndicator(
                                      barRadius: const Radius.circular(10),
                                      width: 200.w,
                                      lineHeight: 2.h,
                                      percent: 0.4,
                                      progressColor: const Color(0xFFECB133),
                                      padding: const EdgeInsets.only(top: 0),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 30.h),

            width: 360.w,
            height: 160.h,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    child: Image.asset("assets/images/game/game_img.png",width: 100.w,)),
                Container(
                  margin: EdgeInsets.fromLTRB(1.w, 40.h, 15.w, 0.h),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("GAME NAME",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),
                      Text("COUNT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                child: Text("Earning Token",style: TextStyle(color: Colors.grey.shade600),),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

            width: 360.w,
            height: 80.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                          child: Image.asset("assets/images/lobby/icons/appbar_icons/xper_icon.png",width: 36.w,)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(1.w, 20.h, 15.w, 0.h),

                              child: Text("+20.13",style: TextStyle(fontSize: 17,color: Colors.grey.shade500),)),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text("XPER",style: TextStyle(color: Colors.grey,fontSize: 11),),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left:15.w,),

                  height: 50.h,
                  width: 0.1,
                  color: Colors.grey,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                          child: Image.asset("assets/images/lobby/icons/appbar_icons/per_icon.png",width: 36.w,)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(1.w, 20.h, 15.w, 0.h),

                              child: Text("+20.13",style: TextStyle(fontSize: 17,color: kPerColor),)),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text("PER",style: TextStyle(color: Colors.grey,fontSize: 11),),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: Play_Finish_View(

                      )));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(15.w, 100.h, 15.w, 0.h),

              width: 176.w,
              height: 50.h,
              child: Image.asset("assets/images/game/game_play_button.png"),
            ),
          )
        ],
      ),
    );
  }
}
