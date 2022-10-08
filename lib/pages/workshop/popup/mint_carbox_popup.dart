import 'dart:ui';

import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../models/box.dart';
import '../../../models/car.dart';
import '../../../types/constants.dart';
import '../../../utils/font.dart';

class Mint_Carbox_Popup {

  void _boxOpenResultProc(BuildContext context, CarNft car) {
    Navigator.pop(context);
    carbox_popup3(context, car);
    //Mint_Carbox_Popup().showDialog(size, context, car);
  }

  void showDialog(Size size, BuildContext context, BoxNft box) {

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
              child: Container(
                  width: 300.w,
                  height: 395.h,
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
                              "CAR BOX",
                              style: Font.lato(Colors.white, FontWeight.bold, 18.sp),
                            )),
                      ),

                      Container(
                        width: 188,
                          height: 170,
                          margin: EdgeInsets.fromLTRB(0.w, 20.h, 0.w, 0.h),

                          child: Image.asset("assets/images/inventory/car_boxes/box_ultimate.png")),
                      Text(
                        "Ultimate Car Box",
                        style: Font.lato(const Color(0xffDE4460), FontWeight.bold, 20.sp),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 30.h, 0.w, 0.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),

                              child: ElevatedButton(

                                style: ButtonStyle(

                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                //  showDialog2(size, context);
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 34.h,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: kPrimaryColor),
                                      color: Colors.white,
                                      borderRadius:
                                      const BorderRadius.all(Radius.circular(35))),
                                  child: Center(
                                    child: Text(
                                      "Later",
                                      style: Font.lato(kPrimaryColor, FontWeight.bold, 14.sp),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),

                              child: ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  showDialog2(size, context);
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 34.h,
                                  decoration: const BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(35))),
                                  child: InkWell(
                                    onTap: () {
                                      StorageController().openBox(box).then((car) => {
                                        if (null == car) {
                                          Fluttertoast.showToast(
                                              msg: 'Box Open Fail',
                                              backgroundColor: Colors.white,
                                              textColor: Colors.black,
                                              gravity: ToastGravity.CENTER)
                                        } else {
                                          // todo: animation
                                          _boxOpenResultProc(context, car)
                                        }
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                        "Open Now",
                                        style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          );
        });
  }

  void showDialog2(Size size, BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
        MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Stack(
            children: [
              Positioned(
                  bottom: 650.h,
                  left: 290.w,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/images/common/cancel_button.png",
                        width: 40.w,
                      ))),
              Center(
                child: DefaultTextStyle(
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  child: Container(
                      width: 300.w,
                      height: 460.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                              width: 320.w,
                              height: 55.h,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: kPrimaryColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 38,
                                    height: 15,
                                    child: Image.asset("assets/images/game/empty_car/empty_car1.png",color: Colors.white,),
                                  ),
                                  Text(
                                    "SEDAN",
                                    style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
                                  ),
                                  Text(
                                    " / ULTIMATE",
                                    style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(
                              width: 300.w,
                              height: 176.46,

                              child: Image.asset("assets/images/common/cars/car1.png",fit: BoxFit.fill,)),
                          Container(
                            width: 170.w,
                            margin: EdgeInsets.fromLTRB(10.w, 7.h, 0.w, 0.h),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Container(
                                  // margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),
                                  margin: EdgeInsets.fromLTRB(4.w, 0.h, 0.w, 0.h),
                                  width:16.w,
                                  height: 16.h,
                                  decoration: const BoxDecoration(
                                      color: Colors.black, shape: BoxShape.circle),
                                  child:
                                  Container(
                                    margin: EdgeInsets.fromLTRB(4.3.w, 1.3.h, 0.w, 0.h),

                                    child: Text(
                                      "#",
                                      style: Font.lato(Colors.white, FontWeight.w400, 9.sp),
                                    ),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                                  child: Text(
                                    "123432578",
                                    style: Font.lato(const Color(0xFF342B35), FontWeight.bold, 14.sp),
                                  ),
                                ),
                                Container(
                                    width: 53.w,height: 16.h,
                                    margin: EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 0.h),
                                    child: Image.asset("assets/images/lobby/icons/limited_button.png",
                                      fit: BoxFit.fill,)),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 10.h),

                            width: 260.w,
                            height: 70.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //Speed Box
                                Container(

                                  width: 55.w,
                                  height: 70.h,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      color: Colors.grey.shade200),
                                  child: Column(
                                    children: [

                                      Container(
                                        margin: EdgeInsets.only(top:10.h),
                                        child: Image.asset(
                                          "assets/images/common/cars/icons/speed_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),
                                          child: Text(
                                            "21",
                                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 12.sp),
                                          )
                                      ),
                                      Text(
                                        "Speed",
                                        style: Font.lato(Colors.grey, FontWeight.w400, 8.sp),
                                      )
                                    ],
                                  ),
                                ),
                                Container(

                                  width: 55.w,
                                  height: 70.h,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      color: Colors.grey.shade200),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top:10.h),
                                        child: Image.asset(
                                          "assets/images/common/cars/icons/dice_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),
                                          child: Text(
                                            "21",
                                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 12.sp),
                                          )
                                      ),
                                      Text(
                                        "Luck",
                                        style: Font.lato(Colors.grey, FontWeight.w400, 8.sp),
                                      )
                                    ],
                                  ),
                                ),
                                Container(

                                  width: 55.w,
                                  height: 70.h,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      color: Colors.grey.shade200),
                                  child: Column(
                                    children: [

                                      Container(
                                        margin: EdgeInsets.only(top:10.h),
                                        child: Image.asset(
                                          "assets/images/common/cars/icons/charge_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),
                                          child: Text(
                                            "21",
                                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 12.sp),
                                          )
                                      ),
                                      Text(
                                        "Charge",
                                        style: Font.lato(Colors.grey, FontWeight.w400, 8.sp),
                                      )
                                    ],
                                  ),
                                ),
                                Container(

                                  width: 55.w,
                                  height: 70.h,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      color: Colors.grey.shade200),
                                  child: Column(
                                    children: [

                                      Container(
                                        margin: EdgeInsets.only(top:10.h),
                                        child: Image.asset(
                                          "assets/images/common/cars/icons/repair_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),
                                          child: Text(
                                            "21",
                                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 12.sp),
                                          )
                                      ),
                                      Text(
                                        "Repair",
                                        style: Font.lato(Colors.grey, FontWeight.w400, 8.sp),
                                      )
                                    ],
                                  ),
                                ),
                              ],
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
                            },
                            child: Container(
                              width: 120.w,
                              height: 37.h,
                              decoration: const BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius:
                                BorderRadius.all(Radius.circular(35)),
                              ),
                              child: Center(
                                child: Text(
                                  "Next Box",
                                  style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              )
            ],
          );
        });
  }

  void carbox_popup3(BuildContext context, CarNft car) {

    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              content: DefaultTextStyle(
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          bottom: 350.h,
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
                          height: 346.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                  width: 300.w,
                                  height: 40.h,


                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      color: Colors.grey),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:46.w,
                                        height: 25.h,
                                        child: Image.asset("assets/images/common/cars/car_appbar_icon.png"),
                                      ),
                                      Text(
                                        " ${car.type} ",
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),
                                      ),
                                      Text(
                                        "/ ${car.grade}",
                                        style: TextStyle(color: Colors.white,fontSize: 12),
                                      ),
                                    ],
                                  )
                              ),
                              SizedBox(
                                width: 300.w,
                                height: 177.h,
                                child: Image.asset("assets/images/common/cars/car1.png",fit: BoxFit.fitWidth,),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.w, 9.h, 15.w, 0.h),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/lobby/icons/circle_icon.png",
                                      width: 16.w,
                                      height: 16.h,
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                      child: Text(
                                        "${car.id}",
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
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
                              Container(
                                margin: EdgeInsets.fromLTRB(13.w, 17.h, 15.w, 0.h),

                                width: 280.w,
                                height: 70.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    //Speed Box
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:6.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/speed_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                          ),
                                          Text(
                                            "${car.speed}",
                                            style: TextStyle(fontSize: 12),),
                                          Text(
                                            "Speed",
                                            style: TextStyle(fontSize: 8, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:6.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/dice_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                          ),
                                          Text(
                                            "${car.lucky}",
                                            style: TextStyle(fontSize: 12),),
                                          Text(
                                            "Luck",
                                            style: TextStyle(fontSize: 8, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:6.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/charge_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                          ),
                                          Text(
                                            "${car.charge}",
                                            style: TextStyle(fontSize: 12),),
                                          Text(
                                            "Charge",
                                            style: TextStyle(fontSize: 8, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:6.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/repair_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                          ),
                                          Text(
                                            "${car.repair}",
                                            style: TextStyle(fontSize: 12),),
                                          Text(
                                            "Repair",
                                            style: TextStyle(fontSize: 8, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),

                                    //Luck box

                                  ],
                                ),
                              ),

                            ],
                          )),
                    ],
                  )),
            );
          },
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }
}
