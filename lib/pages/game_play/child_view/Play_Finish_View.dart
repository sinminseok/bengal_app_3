import 'dart:ui';

import 'package:bengal_app/pages/game_play/child_view/Play_Result_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../common/string_configuration.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';



class Play_Finish_View extends StatefulWidget {
  const Play_Finish_View({Key? key}) : super(key: key);

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              margin: EdgeInsets.fromLTRB(0.w, 3.h, 0.w, 0.h),
              child: Text("Play information",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18.sp)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(width: 390.w,height: 1.h,color: Colors.grey.shade300,),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
            width: 360.w,
            height: 76.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey.shade300)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [ Container(
                          margin: EdgeInsets.fromLTRB(15.w, 10.h, 3.w, 0.h),
                          child: Icon(
                            Icons.bolt,
                            color: kCharColor,
                          )),
                        Text(
                          "Power",
                          style: TextStyle(
                              color: kCharColor, fontWeight: FontWeight.bold),
                        ),],
                    ),

                    Container(
                        margin: EdgeInsets.fromLTRB(0.w, 10.h, 20.w, 0.h),

                        child: Text(
                          "value",
                          style: TextStyle(color: kCharColor),
                        ))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.w, top: 10.h),
                  child: LinearPercentIndicator(
                    center: Text(
                      "%percentage",
                      style: TextStyle(color: Colors.black, fontSize: 11),
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
            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
            width: 360.w,
            height: 92.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  margin: EdgeInsets.fromLTRB(0.w, 15.h, 20.w, 0.h),
                  child:  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                              width: 20.w,
                              height: 20.h,
                            ),
                            Container(
                              margin:
                              EdgeInsets.fromLTRB(6.w, 0.h, 0.w, 0.h),
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
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 0.h),
                                    child: LinearPercentIndicator(
                                      barRadius: const Radius.circular(10),
                                      width: 200.w,
                                      lineHeight: 2.h,
                                      percent: 0.4,
                                      progressColor: Colors.grey

                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/lobby/icons/appbar_icons/per_icon.png",
                              width: 20.w,
                              height: 20.h,
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
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 0.h),
                                    child: LinearPercentIndicator(
                                      barRadius: const Radius.circular(10),
                                      width: 200.w,
                                      lineHeight: 2.h,
                                      percent: 0.4,
                                      progressColor: const Color(0xFFECB133),

                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
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
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(20.w, 25.h, 15.w, 25.h),

                    child: Image.asset("assets/images/game/game_img.png",width: 100.w,height: 100.h,fit: BoxFit.fill,)),
                Container(
                  margin: EdgeInsets.fromLTRB(1.w, 44.h, 0.w, 0.h),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("GAME NAME",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      Text("COUNT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)
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

                child: Text("Earning Token",style: TextStyle(color: Colors.grey.shade600),),
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
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(17.w, 0.h, 0.w, 0.h),
                  child: Row(
                    children: [
                      Container(
                          child: Image.asset("assets/images/lobby/icons/appbar_icons/xper_icon.png",width: 36.w,height: 36.h,)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(10.w, 15.h, 15.w, 0.h),

                              child: Text("+20.13",style: TextStyle(fontSize: 17,color: Colors.grey.shade500),)),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.w, 0.h, 15.w, 0.h),
                            child: Text("XPER",style: TextStyle(color: Colors.grey,fontSize: 11),),
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

                          child: Image.asset("assets/images/lobby/icons/appbar_icons/per_icon.png",width: 36.w,height: 36.h,)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(10.w, 15.h, 15.w, 0.h),

                              child: Text("+20.13",style: TextStyle(fontSize: 17,color: kPerColor),)),
                          Container(

                            margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
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
                         child: Play_Result_View(

                         )));
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
