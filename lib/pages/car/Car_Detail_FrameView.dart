import 'dart:ui';

import 'package:bengal_app/pages/car/popup/Car_Detail_popup.dart';
import 'package:bengal_app/pages/car/widget/Car_Items_Widget.dart';
import 'package:bengal_app/pages/car/widget/Car_Status_Widget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../common/string_configuration.dart';
import '../../types/constants.dart';
import '../../types/string_type.dart';
import '../frame/widget/Coin_Widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../market/popup/Market_popup.dart';
import '../my_page/Mypage_View.dart';
import '../wallet/Wallet_View.dart';

class Car_Detail_FrameView extends StatefulWidget {
  bool car_buy;

  Car_Detail_FrameView({Key? key, required this.car_buy}) : super(key: key);

  @override
  _Car_Detail_FrameView createState() => _Car_Detail_FrameView();
}

class _Car_Detail_FrameView extends State<Car_Detail_FrameView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: kAppbarColor,
          title: SizedBox(
            height: 97.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                // SizedBox(
                //   width: size.width * 0.1,
                // ),
                SizedBox(
                  height: 40.h,
                  child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Coin_Widget("xper_icon", "0.00", size),
                        Coin_Widget("per_icon", "0.00", size),
                        Coin_Widget("havah_icon", "0.00", size),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: Wallet_View()));
                            },
                            child: Image.asset(
                              "assets/images/lobby/icons/appbar_icons/btn_wallet.png",
                              width: 40.w,
                              height: 40.h,
                              fit: BoxFit.fill,
                            ))
                      ]),
                ),
              ],
            ),
          ),
        ),
//BorderRadius.only(topLeft:Radius.circular(10))
        body: Column(
          children: [
            Container(
              width: size.width,
              height: 40.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: kPrimaryColor),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/common/cars/car_appbar_icon.png",
                      width: size.width * 0.13,
                    ),
                  ),
                  Text(
                    "SPORTS/EPIC+",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                  ),
                  Text(
                    "Lv 12/30  Mint:0",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: Container(
                    child: Image.asset(
                      "assets/images/common/cars/car1.png",
                      height: 225.h,
                      width: size.width * 1,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.23,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lv 1",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image.asset(
                          "assets/images/lobby/icons/circle_icon.png",
                          width: size.width * 0.05,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "13123",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/lobby/icons/limited_button.png",
                            width: size.width * 0.2,
                          ),
                        ),
                      ],
                    ),
                    Car_Items_Widget(size),
                    Container(
                      margin: EdgeInsets.only(left: 30.w, top: 3.h),
                      child: LinearPercentIndicator(
                        center: Text(
                          "Durability 45.50%",
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                        barRadius: Radius.circular(10),
                        width: size.width * 0.8,
                        lineHeight: 15.h,
                        percent: 0.9,
                        progressColor: Colors.teal,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 35.w),
                      child: Row(
                        children: [
                          LinearPercentIndicator(
                            barRadius: Radius.circular(10),
                            width: size.width * 0.6,
                            lineHeight: size.height * 0.01,
                            percent: 0.9,
                            progressColor: Colors.teal,
                          ),
                          Text(
                            "1333 km(31)",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                  Text(
                    "Status",
                    style: TextStyle(color: Colors.grey.shade800, fontSize: 15),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Container(
                    width: size.width * 0.15,
                    height: size.height * 0.034,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.greenAccent.shade100),
                    child: Center(
                        child: Text(
                      "+4.0",
                      style: TextStyle(color: Colors.green),
                    )),
                  ),
                ],
              ),
            ),
            Car_Status_Widget(size),
            Container(
              width: 330.w,
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey.shade200),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Image.asset(
                      "assets/images/common/cars/icons/question_mark.png",
                      width: 22.w,
                    ),
                  ),
                  Text(
                    "Mint Information",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  InkWell(
                    onTap: (){

                        Car_Detail_popup().showDialog_view_button(size,context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 70.w),
                      width: 100.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: kPrimaryColor),
                      child: Center(
                          child: Text(
                        "View",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            ),
            widget.car_buy == true
                ? Column(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(0.w, 30.h, 0.w, 10.h),
                          width: size.width,
                          height: size.height * 0.001,
                          decoration:
                              BoxDecoration(color: Colors.grey, boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.08),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 13), // changes position of shadow
                            ),
                          ])),
                      InkWell(
                        onTap: (){
                          Market_popup().showDialog(size, context);
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                          width: 360.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child:   Center(
                            child: Text(
                              "Cost BUY",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(
                    margin: EdgeInsets.only(top: 59.h),
                    width: size.width * 1,
                    height: 89.h,
                    color: kPrimaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){
                            Car_Detail_popup().Levelup_popup(context);
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/common/cars/icons/Level_Up.png",
                              width: size.width * 0.12,
                            ),
                          ),
                        ),
                        Image.asset(
                            "assets/images/common/cars/icons/Repair.png",
                            width: size.width * 0.12),
                        Image.asset(
                            "assets/images/common/cars/icons/Recovery.png",
                            width: size.width * 0.12),
                        Image.asset("assets/images/common/cars/icons/Lease.png",
                            width: size.width * 0.12),
                        Image.asset("assets/images/common/cars/icons/Sell.png",
                            width: size.width * 0.12),
                        Image.asset(
                            "assets/images/common/cars/icons/Transfer.png",
                            width: size.width * 0.12),
                      ],
                    ),
                  )
          ],
        ));
  }
}
