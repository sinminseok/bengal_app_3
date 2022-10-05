import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import '../../../common/string_configuration.dart';
import '../../../controller/storage_controller.dart';
import '../../../models/game.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';
import '../../frame/Frame_View.dart';
import '../widget/Earned_widget.dart';
import '../widget/Result_Car_info_widget.dart';

class Play_Result_View extends StatefulWidget {
  Play_Result_View({Key? key, required this.game}) : super(key: key);

  GameInfo game;

  @override
  _Play_Result_View createState() => _Play_Result_View();
}

class _Play_Result_View extends State<Play_Result_View> {
  double _height_parent =395.h;
  double _height_child =110.h;
  //435
  //160

  @override
  void initState() {
    // TODO: implement initState

    setState(() {
      Timer(Duration(seconds: 1), () {
        setState(() {
          _height_parent = 435.h;
          _height_child = 160.h;
        });
      });

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 3.h),
                      width: 360.w,
                      height: _height_parent,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          color: Colors.white),
                      child: SingleChildScrollView(
                        child: Column(

                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 60.h, 0.w, 0.h),
                              child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      Image.asset(widget.game.gameIconAsset(),
                                        width: 80.w,
                                        height: 90.h,
                                      ),

                                    ],
                                  ),
                                  Container(
                                    width: 100.w,
                                    margin: EdgeInsets.fromLTRB(0.w, 0.h, 20.w, 0.h),
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
                                          "${StorageController().account!.power}",
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
                                width: 300.w,
                                height: 30.h,

                                margin:
                                EdgeInsets.fromLTRB(0.w, 6.h, 0.w, 0.h),
                                child: Center(
                                  child: Text(
                                    //widget.game.title
                                    widget.game.title,
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),

                                  ),
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
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn,
                              width: 320.w,
                              height: _height_child,
                              decoration: BoxDecoration(
                                  border: Border.all(color: kPrimaryColor),
                                  borderRadius: const BorderRadius.all(Radius.circular(15))),
                              child: SingleChildScrollView(
                                child: Column(

                                  children: [
                                    //xper
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0.w, 20.h, 0.w, 0.h),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      15.w, 0.h, 0.w, 0.h),
                                                  child: Image.asset(
                                                    "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                                    width: 30.w,
                                                    height: 30.h,
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      10.w, 0.h, 0.w, 0.h),
                                                  child: Text(
                                                    "XPER",
                                                    style: TextStyle(
                                                        color: Colors.grey.shade600,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold),
                                                  )),
                                            ],
                                          ),
                                          Container(
                                            margin:
                                            EdgeInsets.fromLTRB(0.w, 0.h, 20.w, 0.h),
                                            child: Text(
                                              //todo: StorageController().miningResultList!.lastMiningResult(). 채굴량 누적 추가 해야 함
                                              "12",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey.shade600,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    //per
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0.w, 15.h, 0.w, 0.h),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      15.w, 0.h, 0.w, 0.h),
                                                  child: Image.asset(
                                                    "assets/images/lobby/icons/appbar_icons/per_icon.png",
                                                    width: 30.w,
                                                    height: 30.h,
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      10.w, 0.h, 0.w, 0.h),
                                                  child: Text(
                                                    "PER",
                                                    style: TextStyle(
                                                        color: kPerColor,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold),
                                                  )),
                                            ],
                                          ),
                                          Container(
                                            margin:
                                            EdgeInsets.fromLTRB(15.w, 0.h, 20.w, 0.h),
                                            child: Text(
                                              "3",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: kPerColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    //special box
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0.w, 15.h, 0.w, 0.h),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      15.w, 0.h, 0.w, 0.h),
                                                  child: Image.asset(
                                                    "assets/images/game/special_box.png",
                                                    width: 30.w,
                                                    height: 30.h,
                                                  )),
                                              Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      10.w, 0.h, 15.w, 0.h),
                                                  child: Text(
                                                    "Lv 1 Special Box",
                                                    style: TextStyle(
                                                        color: Colors.grey.shade600,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold),
                                                  )),
                                            ],
                                          ),
                                          Container(
                                            margin:
                                            EdgeInsets.fromLTRB(15.w, 0.h, 20.w, 0.h),
                                            child: Text(
                                              "1EA",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey.shade600,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
                      width: 360.w,
                      height: 40.h,
                      decoration: const BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Center(
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
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                    child: Result_Car_info_widget())
              ],
            ),
            FadeIn(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeIn,
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
                                child: const Frame_View()));
                      },
                      child: Image.asset("assets/images/game/lobby_button.png"))),
            ),
          ],
        ),
      ),
    );
  }
}
