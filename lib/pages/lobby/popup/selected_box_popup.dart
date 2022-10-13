import 'package:bengal_app/pages/lobby/popup/special_box_open_result.dart';
import 'package:bengal_app/utils/dataType.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../controller/storage_controller.dart';
import '../../../models/game.dart';
import '../../../types/constants.dart';
import '../../../utils/font.dart';

class Selected_box_popup {
  void showDialog( BuildContext context, MiningBox box) {
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
              style: const TextStyle(fontSize: 16, color: Colors.black),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      bottom: 470.h,
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
                      height: 470.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 300.w,
                            height: 55.h,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                                  "Lv${box.level}.Special Box",
                                  style: Font.lato(Colors.white, FontWeight.bold, 16.sp),
                                )),
                          ),

                          Image.asset("assets/images/lobby/boxes/ready_box.png"),
                          Text(
                            "Remaining Time",
                            style: Font.lato(Colors.grey, FontWeight.w400, 14.sp),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              box.getSpecialBoxOpenRemainString(),
                              style: Font.lato(kPrimaryColor, FontWeight.bold, 18.sp),
                            ),
                          ),
                          Container(
                            width: 270.w,
                            height: 90.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Base Cost",
                                        style: Font.lato(Colors.grey, FontWeight.w400, 13.sp),
                                      ),
                                      Text(
                                        "${box.baseCost}",
                                        style: Font.lato(kPrimaryColor, FontWeight.w400, 14.sp),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Boost Cost",
                                        style: Font.lato(Colors.grey, FontWeight.w400, 13.sp),
                                      ),
                                      Text(
                                        box.getSpecialBoxBoostCost().asString(),
                                        style: Font.lato(kPrimaryColor, FontWeight.w400, 14.sp),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                            width: 280.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: kPrimaryColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(20.w, 0.h, 0.w, 0.h),

                                  child: Text(
                                    "Total",
                                    style: Font.lato(Colors.grey, FontWeight.bold, 14.sp),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 20.w, 0.h),

                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),

                                        width: 18.w,
                                        child: Image.asset("assets/images/lobby/icons/appbar_icons/xper_icon.png"),
                                      ),
                                      Text(
                                        box.getSpecialBoxTotalOpenCost().asString(),
                                        style: Font.lato(kPrimaryColor, FontWeight.w400, 14.sp),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),

                            child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                                StorageController().openSpecialBox(box);
                                // todo: 연출
                                SpecialBoxOpenResult().popup(context, box);
                              },
                              child: Container(
                                width: 120.w,
                                height: 35.h,
                                decoration: const BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                                child: Center(
                                  child: Text(
                                    "Open",
                                    style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              )
            ),
          );
        });
  }

  void showDialog2(BuildContext context) {
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
              child:Stack(
                children: [

                  Container(
                      width: 320.w,
                      height: 283.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 320.w,
                            height: 55.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                                  "SPECIAL BOX BOOST",
                                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                                )),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20.w, 30.h, 0.w, 0.h),

                                child: Text(
                                  "Boost Cost",
                                  style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight:FontWeight.bold),
                                ),
                              ),
                              Container(),
                            ],
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),

                            width: 280.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),


                                      child: Image.asset(
                                        "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                        width: 20.w,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(4.w, 0.h, 0.w, 0.h),
                                      child: Text(
                                        "XPER",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),


                                Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),

                                  child: Text(
                                    "12.91",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),


                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
                            child: Text(

                              "Do you want to proceed with the boost?",
                              style: TextStyle(fontSize: 14.sp, color: Colors.grey),

                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();


                                  },
                                  child: Container(
                                    width: 120.w,
                                    height: 37.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(35)),
                                        border: Border.all(color: kPrimaryColor)),
                                    child: Center(
                                      child: Text(
                                        "No",
                                        style: TextStyle(color: kPrimaryColor),
                                      ),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    showDialog3(context);
                                  },
                                  child: Container(
                                    width: 120.w,
                                    height: 37.h,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(35)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Yes",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              )
            ),
          );
        });
  }

  void showDialog3( BuildContext context) {
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
                      bottom: 478.h,
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
                      height: 470.h,
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
                                  "Lv5.Specical Box",
                                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                                )),
                          ),

                          Image.asset("assets/images/lobby/boxes/ready_box.png"),
                          Text(
                            "Reamaing Time",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "01:23:59",
                              style: TextStyle(color: kPrimaryColor, fontSize: 18),
                            ),
                          ),
                          Container(
                            width: 270.w,
                            height: 90.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),

                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Base Cost",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 13),
                                      ),
                                      Text(
                                        "30.00",
                                        style: TextStyle(
                                            color: kPrimaryColor, fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Base Cost",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 13),
                                      ),
                                      Text(
                                        "30.00",
                                        style: TextStyle(
                                            color: kPrimaryColor, fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                            width: 280.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: kPrimaryColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(20.w, 0.h, 0.w, 0.h),

                                  child: Text(
                                    "Total",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 20.w, 0.h),

                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),

                                        width: 18.w,
                                        child: Image.asset("assets/images/lobby/icons/appbar_icons/total_icon.png"),
                                      ),

                                      Text(
                                        "30.00",
                                        style: TextStyle(
                                            color: kPrimaryColor, fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),

                            child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                width: 120.w,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                                child: Center(
                                  child: Text(
                                    "Open",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              )
            ),
          );
        });
  }
}
