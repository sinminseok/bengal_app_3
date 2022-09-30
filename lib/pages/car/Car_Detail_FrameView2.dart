import 'dart:ui';

import 'package:bengal_app/pages/car/popup/Status_popup.dart';
import 'package:bengal_app/pages/car/popup/levelup_popup/levelup1_popup.dart';
import 'package:bengal_app/pages/car/popup/recovery/recovery_popup.dart';
import 'package:bengal_app/pages/car/popup/repair/repair_popup.dart';
import 'package:bengal_app/pages/car/popup/sell/sell_popup.dart';
import 'package:bengal_app/pages/car/widget/Car_Items_Widget.dart';
import 'package:bengal_app/pages/car/widget/Car_Status_Widget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../models/car.dart';
import '../../types/constants.dart';
import '../frame/widget/Coin_Widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../market/popup/Market_popup.dart';
import '../wallet/Wallet_View.dart';

class Car_Detail_FrameView2 extends StatefulWidget {
  final bool carBuy;
  final CarNft carNft;

  Car_Detail_FrameView2({Key? key, required this.carNft, required this.carBuy})
      : super(key: key);

  @override
  _Car_Detail_FrameView createState() => _Car_Detail_FrameView();
}

class _Car_Detail_FrameView extends State<Car_Detail_FrameView2> {
  bool currently_status = true;
  bool base_statue = false;

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
                        Coin_Widget("xper_icon", "0.00"),
                        Coin_Widget("per_icon", "0.00"),
                        Coin_Widget("havah_icon", "0.00"),
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
        body: SingleChildScrollView(
          child: Container(
            width: 390.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 390.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13),
                          topRight: Radius.circular(13)),
                      color: kPrimaryColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                            width: 40.w,
                            height: 21.h,
                            child: Image.asset(
                              "assets/images/common/cars/car_appbar_icon.png",
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(4.w, 13.h, 0.w, 13.h),
                            child: Text(
                              "SPORTS/EPIC+",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                            child: Text(
                              "Lv 12",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),
                            child: Text(
                              " / 30",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 5.h, 15.w, 0.h),
                            child: Text(
                              " ·  Mint:0",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                //Car main image
                Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/common/cars/car1.png",
                        height: 225.33.h,
                        width: 390.w,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 194.h, 15.w, 0.h),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/lobby/icons/circle_icon.png",
                                  width: 16.w,
                                  height: 16.h,
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.fromLTRB(5.w, 0.h, 5.w, 0.h),
                                  child: Text(
                                    "${widget.carNft.id}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ),
                                Container(
                                  width: 57.w,
                                  height: 18.h,
                                  child: Image.asset(
                                    "assets/images/lobby/icons/limited_button.png",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),



                Car_Items_Widget(size),

                Container(
                  margin: EdgeInsets.fromLTRB(30.w, 10.h, 0.w, 0.h),
                  child: LinearPercentIndicator(
                    center: Text(
                      "Durability 45.50%",
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                    barRadius: Radius.circular(10),
                    width: 330.w,
                    lineHeight: 15.h,
                    percent: 0.9,
                    progressColor: Colors.teal,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30.w, 10.h, 15.w, 0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LinearPercentIndicator(
                        barRadius: Radius.circular(10),
                        width: 230.w,
                        lineHeight: 10.h,
                        percent: 0.9,
                        progressColor: Colors.teal,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 0.h, 20.w, 0.h),
                        child: Text(
                          "1333 km (31)",
                          style: TextStyle(
                              color: kCharColor,
                              fontSize: 9,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(40.w, 31.h, 20.w, 0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                            child: Text(
                              "Status",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 18),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Status_popup().status_popup(context);
                            },
                            child: Container(
                              width: 34.w,
                              height: 22.h,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.greenAccent.shade100),
                              child: Center(
                                  child: Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 12),
                              )),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40.w, 0.h, 15.w, 0.h),
                        width: 160.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.grey.shade300),
                        child: Stack(
                          children: [
                            Container(
                              width: 80.w,
                              height: 24.h,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: currently_status != true
                                      ? Colors.grey.shade300
                                      : kPrimaryColor),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    currently_status = true;
                                    base_statue = false;
                                  });
                                },
                                child: Center(
                                  child: Text(
                                    "Currently",
                                    style: TextStyle(
                                        color: currently_status != true
                                            ? Colors.grey
                                            : Colors.white,
                                        fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 80.w,
                              child: Container(
                                width: 80.w,
                                height: 24.h,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    color: base_statue == true
                                        ? kPrimaryColor
                                        : Colors.grey.shade300),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      currently_status = false;
                                      base_statue = true;
                                    });
                                  },
                                  child: Center(
                                    child: Text(
                                      "Base",
                                      style: TextStyle(
                                          color: base_statue == true
                                              ? Colors.white
                                              : Colors.grey,
                                          fontSize: 10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Car_Status_Widget(size, widget.carNft),
                Container(
                  width: 330.w,
                  height: 50.h,
                  margin: EdgeInsets.fromLTRB(15.w, 35.h, 15.w, 0.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey.shade200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                            child: Image.asset(
                              "assets/images/common/cars/icons/question_mark.png",
                              width: 22.w,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
                            child: Text(
                              "Mint Information",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          //피그마 최신 자료에 빠져있길래 일단 뺌
                          // Car_Detail_popup()
                          //     .showDialog_view_button(size, context);
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),
                          width: 100.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                widget.carBuy == true
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
                                  offset: Offset(
                                      0, 13), // changes position of shadow
                                ),
                              ])),
                          InkWell(
                            onTap: () {
                              Market_popup().showDialog(size, context);
                            },
                            child: Container(
                              margin:
                                  EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                              width: 360.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Center(
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
                        margin: EdgeInsets.fromLTRB(0.w, 50.h, 0.w, 0.h),
                        width: 390.w,
                        height: 55.h,
                        color: kPrimaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Levelup1_popup()
                                    .Levelup_popup(context, widget.carNft);
                              },
                              child: Container(
                                child: Image.asset(
                                  "assets/images/common/cars/icons/Level_Up.png",
                                  width: 42.w,
                                  height: 43.h,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Repair_popup().repair_popup(context);
                              },
                              child: Container(
                                child: Image.asset(
                                  "assets/images/common/cars/icons/Repair.png",
                                  width: 42.w,
                                  height: 43.h,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Recovery_popup().recovery_popup(context);
                              },
                              child: Container(
                                child: Image.asset(
                                  "assets/images/common/cars/icons/Recovery.png",
                                  width: 42.w,
                                  height: 43.h,
                                ),
                              ),
                            ),
                            Image.asset(
                              "assets/images/common/cars/icons/Lease.png",
                              width: 42.w,
                              height: 43.h,
                            ),
                            InkWell(
                              onTap: () {
                                Sell_popup().sell_popup(context);
                              },
                              child: Container(
                                child: Image.asset(
                                  "assets/images/common/cars/icons/Sell.png",
                                  width: 42.w,
                                  height: 43.h,
                                ),
                              ),
                            ),
                            Image.asset(
                              "assets/images/common/cars/icons/Transfer.png",
                              width: 42.w,
                              height: 43.h,
                            ),
                          ],
                        ),
                      )
              ],
            ),
          ),
        ));
  }
}
