import 'dart:ui';

import 'package:bengal_app/pages/car/popup/Car_Detail_popup.dart';
import 'package:bengal_app/pages/car/popup/levelup_popup/levelup1_popup.dart';
import 'package:bengal_app/pages/car/popup/recovery/recovery_popup.dart';
import 'package:bengal_app/pages/car/popup/repair/repair_popup.dart';
import 'package:bengal_app/pages/car/popup/sell/sell_popup.dart';
import 'package:bengal_app/pages/car/widget/Car_Items_Widget.dart';
import 'package:bengal_app/pages/car/widget/Car_Status_Widget.dart';
import 'package:bengal_app/pages/car/widget/Car_Status_Widget2.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../Controller/storage_controller.dart';
import '../../common/string_configuration.dart';
import '../../models/car.dart';
import '../../types/constants.dart';
import '../../types/string_type.dart';
import '../frame/widget/Coin_Widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../market/popup/Market_popup.dart';
import '../my_page/Mypage_View.dart';
import '../wallet/Wallet_View.dart';

class Car_Detail_FrameView2 extends StatefulWidget {
  final bool carBuy;
  final CarNft carNft;

  Car_Detail_FrameView2({Key? key, required this.carNft, required this.carBuy}) : super(key: key);

  @override
  _Car_Detail_FrameView createState() => _Car_Detail_FrameView();
}

class _Car_Detail_FrameView extends State<Car_Detail_FrameView2> {
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
                        Coin_Widget("xper_icon", "${StorageController().wallet!.balanceXPer}"),
                        Coin_Widget("per_icon", "${StorageController().wallet!.balancePer}"),
                        Coin_Widget("havah_icon", "${StorageController().wallet!.balanceHavah}"),
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
          child: Column(
            children: [
              Container(
                width:390.w,
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
                      "${widget.carNft.getCarCardTitle()}+",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: size.width * 0.3,
                    ),
                    Text(
                      "Lv ${widget.carNft.level}/30  Mint:${widget.carNft.mintingCount}",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/common/cars/car1.png",
                      height: 225.h,
                      width: 390.w,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 186.h, 15.w, 0.h),

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
                              Text(
                                "${widget.carNft.id}",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                        Car_Items_Widget(size),
                        Container(
                          margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                          child: LinearPercentIndicator(
                            center: Text(
                              "Durability ${widget.carNft.durability}",
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
                          margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                          child: Row(
                            children: [
                              LinearPercentIndicator(
                                barRadius: Radius.circular(10),
                                width: 230.w,
                                lineHeight:10.h,
                                percent: 0.9,
                                progressColor: Colors.teal,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.w, 0.h, 0.w, 0.h),

                                child: Text(
                                  "${widget.carNft.driven} km (31)",
                                  style: TextStyle(color: Colors.grey, fontSize: 9),
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
              Container(
                margin: EdgeInsets.fromLTRB(40.w, 20.h, 20.w, 15.h),

                child: Row(
                  children: [

                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),

                      child: Text(
                        "Status",
                        style: TextStyle(color: Colors.grey.shade800, fontSize: 15),
                      ),
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

              Car_Status_Widget2(size, widget.carNft),
              Container(
                width: 330.w,
                height: 50.h,
                margin: EdgeInsets.fromLTRB(15.w, 36.h, 15.w, 0.h),

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
                margin: EdgeInsets.fromLTRB(0.w, 41.6.h, 0.w, 0.h),

                width: 390.w,
                height: 55.h,
                color: kPrimaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Levelup1_popup().Levelup_popup(context);
                      },
                      child: Container(
                        child: Image.asset(
                          "assets/images/common/cars/icons/Level_Up.png",
                          width: size.width * 0.12,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Repair_popup().repair_popup(context);
                      },
                      child: Container(

                        child: Image.asset(
                          "assets/images/common/cars/icons/Repair.png",
                          width: 42.w,
                          height: 43.h,),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Recovery_popup().recovery_popup(context);
                      },
                      child: Container(
                        child: Image.asset(
                          "assets/images/common/cars/icons/Recovery.png",
                          width: 42.w,
                          height: 43.h,),
                      ),
                    ),
                    Image.asset("assets/images/common/cars/icons/Lease.png",
                      width: 42.w,
                      height: 43.h,),
                    InkWell(
                      onTap: (){
                        Sell_popup().sell_popup(context);
                      },
                      child: Container(
                        child: Image.asset("assets/images/common/cars/icons/Sell.png",
                          width: 42.w,
                          height: 43.h,),
                      ),
                    ),
                    Image.asset(
                      "assets/images/common/cars/icons/Transfer.png",
                      width: 42.w,
                      height: 43.h,),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
