import 'package:bengal_app/controller/storage_controller.dart';
import 'package:bengal_app/pages/car/popup/Status_popup.dart';
import 'package:bengal_app/pages/car/popup/levelup_popup/levelup1_popup.dart';
import 'package:bengal_app/pages/car/popup/levelup_popup/levelup2_popup.dart';
import 'package:bengal_app/pages/car/popup/recovery/recovery_popup.dart';
import 'package:bengal_app/pages/car/popup/repair/repair_popup.dart';
import 'package:bengal_app/pages/car/popup/sell/sell_popup.dart';
import 'package:bengal_app/pages/car/widget/Car_Items_Widget.dart';
import 'package:bengal_app/pages/car/widget/Car_Status_Widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../common/observer.dart';
import '../../models/car.dart';
import '../../types/constants.dart';
import '../../utils/font.dart';
import '../frame/widget/Coin_Widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../market/popup/Market_popup.dart';
import '../wallet/Wallet_View.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class Car_Detail_FrameView2 extends StatefulWidget {
  final bool carBuy;
  final CarNft car;

  Car_Detail_FrameView2({Key? key, required this.car, required this.carBuy})
      : super(key: key);

  @override
  _Car_Detail_FrameView createState() => _Car_Detail_FrameView();
}

enum StatusToggleItem {
  Currently,
  Base,
}

class _Car_Detail_FrameView extends State<Car_Detail_FrameView2> implements Observer {
  @override
  void initState() {
    super.initState();
    StorageController().registerObserver(this);
  }

  @override
  updateObserver() {
    if (mounted) {
      setState(() {
      });
    }
  }

  StatusToggleItem statusToggle = StatusToggleItem.Currently;

  var formatter = NumberFormat('#,##,000');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: kAppbarColor,
          title: SizedBox(
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/images/common/back_button.png",
                    width: 36.w,
                    fit: BoxFit.contain,
                  ),
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Coin_Widget("xper_icon", StorageController().wallet!.balanceXPer.toString()),
                          Coin_Widget("per_icon", StorageController().wallet!.balancePer.toString()),
                          Coin_Widget("havah_icon", StorageController().wallet!.balanceHavah.toString()),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: Wallet_View()));
                            },
                            child: Image.asset(
                              "assets/images/lobby/icons/appbar_icons/btn_wallet.png",
                              width: 36.w,
                              fit: BoxFit.contain,
                            )
                        ),
                      )
                  ]
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: 390.w,
              height: 40.h,
              decoration:  BoxDecoration(

                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                  ),
                  color: widget.car.getCarGradeColor()),
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
                          "${widget.car.getCarTypeString().toUpperCase()} / ${widget.car.getCarGradeString().toString()}",
                          style: Font.lato(Colors.white, FontWeight.bold, 12.sp),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                        child: Text(
                          "Lv ${widget.car.level}",
                          style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 5.h, 15.w, 0.h),
                        child: Text(
                          "  ·   Mint : ${widget.car.mintingCount}",
                          style: Font.lato(Colors.white, FontWeight.w400, 10.sp),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  widget.car.getAssetImage(),
                  // height: 225.33.h,
                  width: 390.w,
                  fit: BoxFit.fill,
                ),

                Positioned(
                  bottom: 15.0.h,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Row(
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
                                "${widget.car.id}",
                                style: Font.lato(Colors.black, FontWeight.bold, 14.sp),
                              ),
                            ),
                            SizedBox(
                              width: 57.w,
                              height: 18.h,
                              child: Image.asset(
                                "assets/images/lobby/icons/limited_button.png",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(30.w, 0.h, 30.w, 0.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Car_Items_Widget(size),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 10.h),
                          child: LinearPercentIndicator(
                            center: Text(
                              "Durability ${widget.car.durability}/${StorageController().commonData.initialInfo.carMaxDurability} ("
                                  "${(widget.car.durability / StorageController().commonData.initialInfo.carMaxDurability * 100).toStringAsFixed(0)}"
                                  "%)",
                              style: Font.lato(Colors.white, FontWeight.w400, 9.sp),
                            ),
                            backgroundColor: EMPTY_F9F9F9,
                            barRadius: const Radius.circular(10),
                            padding: EdgeInsets.zero,
                            width: 330.w,
                            lineHeight: 15.h,
                            percent: widget.car.durability / StorageController().commonData.initialInfo.carMaxDurability,
                            progressColor: widget.car.getDurabilityColor(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LinearPercentIndicator(
                              backgroundColor: EMPTY_F2F2F2,
                              barRadius: const Radius.circular(10),
                              padding: EdgeInsets.zero,
                              width: 230.w,
                              lineHeight: 4.h,
                              percent: widget.car.driven / StorageController().commonData.initialInfo.carMaxMileage,
                              progressColor: widget.car.getDrivenColor(),
                            ),
                            Text(
                              "${formatter.format(widget.car.driven)} km (${widget.car.getDrivenStatus()})",
                              style: Font.lato(widget.car.getDrivenColor(), FontWeight.bold, 9.sp),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                              child: Text(
                                "Status",
                                style: Font.lato(TXT_SUB_746F7B, FontWeight.bold, 18.sp),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                StatusPopup().popUp(context, widget.car);
                              },
                              child: Container(
                                width: 34.w,
                                height: 24.h,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    color: Color(0xffE8F9F6)),
                                child: Center(
                                    child: Text(
                                      "${widget.car.status}",
                                      style: Font.lato(kCharColor, FontWeight.w400, 12.sp),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // margin: EdgeInsets.fromLTRB(40.w, 0.h, 15.w, 0.h),
                          width: 160.w,
                          height: 24.h,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: EMPTY_F9F9F9),
                          child: Stack(
                            children: [
                              Container(
                                width: 80.w,
                                height: 24.h,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                    color: StatusToggleItem.Currently == statusToggle
                                        ? kPrimaryColor
                                        : EMPTY_F9F9F9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      statusToggle = StatusToggleItem.Currently;
                                    });
                                  },
                                  child: Center(
                                    child: Text(
                                      describeEnum(StatusToggleItem.Currently),
                                      style: Font.lato(StatusToggleItem.Currently == statusToggle
                                          ? Colors.white
                                          : Disabled_BAB8C4, FontWeight.bold, 10.sp),
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
                                      const BorderRadius.all(Radius.circular(30)),
                                      color: StatusToggleItem.Base == statusToggle
                                          ? kPrimaryColor
                                          : EMPTY_F9F9F9),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        statusToggle = StatusToggleItem.Base;
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                        describeEnum(StatusToggleItem.Base),
                                        style: Font.lato(StatusToggleItem.Base == statusToggle
                                            ? Colors.white
                                            : Disabled_BAB8C4, FontWeight.bold, 10.sp),
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
                    Car_Status_Widget(size, widget.car, StatusToggleItem.Currently == statusToggle),
                    Container(
                      width: 330.w,
                      height: 50.h,
                      // margin: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: EMPTY_F9F9F9,
                      ),
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
                                  style: Font.lato(kPrimaryColor, FontWeight.bold, 14.sp),
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
                              decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                                  color: kPrimaryColor),
                              child: Center(
                                  child: Text(
                                    "View",
                                    style: Font.lato(Colors.white, FontWeight.bold, 10.sp),
                                  )),
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
      bottomNavigationBar: BottomAppBar(
        child: widget.carBuy == true
        ?
        Container(
          width: 390.w,
          height: 60.h,
          margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 1],
                colors: [
                  linearBrightnessColor,
                  linearDarknessColor,
                ]
            ),
            color: kPrimaryColor,
            borderRadius:
            BorderRadius.all(Radius.circular(20)),
          ),
          child: InkWell(
            onTap: () {
              if (widget.car.isSell) {
                StorageController().sellCarCancel(widget.car);
                Navigator.of(context).pop();
              } else {
                Market_popup().showDialog(size, context, widget.car);
              }
            },
            child: Center(
              child: Text(
                widget.car.isSell ? "Sales Registration Cancel" : "${widget.car.price}Hvh BUY",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
        : Container(
            width: 390.w,
            height: 55.h,
            color: kPrimaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    widget.car.startedLevelUp ?
                    Levelup2_popup().levelup2_popup(context, widget.car) :
                    Levelup1_popup().Levelup_popup(context, widget.car);
                  },
                  child: Image.asset(
                    widget.car.startedLevelUp ?
                    "assets/images/common/cars/icons/boost.png" :
                    "assets/images/common/cars/icons/Level_Up.png",
                    width: 42.w,
                    height: 43.h,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Repair_popup().repair_popup(context, widget.car);
                  },
                  child: Image.asset(
                    "assets/images/common/cars/icons/Repair.png",
                    width: 42.w,
                    height: 43.h,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Recovery_popup().recovery_popup(context, widget.car);
                  },
                  child: Image.asset(
                    "assets/images/common/cars/icons/Recovery.png",
                    width: 42.w,
                    height: 43.h,
                  ),
                ),
                Image.asset(
                  "assets/images/common/cars/icons/Lease.png",
                  width: 42.w,
                  height: 43.h,
                ),
                InkWell(
                  onTap: () {
                    Sell_popup().sell_popup(context, widget.car);
                  },
                  child: Image.asset(
                    "assets/images/common/cars/icons/Sell.png",
                    width: 42.w,
                    height: 43.h,
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
      ),
    );
  }
}
