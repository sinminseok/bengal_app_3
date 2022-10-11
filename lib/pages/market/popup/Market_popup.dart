import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../common/string_configuration.dart';
import '../../../controller/storage_controller.dart';
import '../../../models/car.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';

class Market_popup {
  void showDialog(Size size, BuildContext context, CarNft car) {
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
                  height: 600.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 300.w,
                        height: 50.25.h,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: kPrimaryColor),
                        child: Center(
                            child: Text(
                          "BUY",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      Image.asset(
                        car.getAssetImage(),
                        width: 300.w,
                        height: 180.h,
                        fit: BoxFit.fitWidth,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(14.w, 10.h, 0.w, 0.h),
                              width: 200.w,
                              height: 20.h,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/lobby/icons/circle_icon.png",
                                    width: 12.w,
                                    height: 12.h,
                                  ),
                                  Text("${car.id}"),
                                  Image.asset(
                                    "assets/images/lobby/icons/limited_button.png",
                                    width: 57.w,
                                    height: 18.h,
                                  ),
                                ],
                              ),
                            ),
                          ]),

                      Container(
                        width: 260.w,
                        height: 152.h,
                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.grey.shade300),
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 6.h),

                              width:200.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Type",
                                    style: TextStyle(color: Colors.grey.shade700,fontSize: 14),
                                  ),
                                  Text(car.getCarTypeString().toUpperCase(),
                                    style: const TextStyle(color: kPrimaryColor,fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 6.h),
                              width:200.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Grade",
                                    style: TextStyle(color: Colors.grey.shade700,fontSize: 14),
                                  ),
                                  Text(car.getCarGradeString().toUpperCase(),
                                    style: const TextStyle(color: kPrimaryColor,fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 6.h),
                              width:200.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Level",
                                    style: TextStyle(color: Colors.grey.shade700,fontSize: 14),
                                  ),
                                  Text("${car.level}",
                                    style: const TextStyle(color: kPrimaryColor,fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 5.h),
                              width:200.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Mint",
                                    style: TextStyle(color: Colors.grey.shade700,fontSize: 14),
                                  ),
                                  Text("${car.mintingCount}",
                                    style: const TextStyle(color: kPrimaryColor,fontSize: 14),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: 260.w,
                        height: 40.h,
                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 60.h),

                        decoration: BoxDecoration(

                          border: Border.all(color: kPrimaryColor),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text("Price",
                                style: TextStyle(color: kPrimaryColor,fontSize: 14),
                              ),
                              SizedBox(width: size.width*0.1,),
                              Text("${car.price}",
                                style: const TextStyle(color: kPrimaryColor,fontSize: 14),
                              ),
                            ],
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
                          StorageController().buyCar(car).then((ret) => {
                            if (ret) {
                              Fluttertoast.showToast(
                                  msg: StringConfiguration().uiString(UiStringType.TOAST_MESSAGE_09),
                                  backgroundColor: Colors.white,
                                  textColor: Colors.black,
                                  gravity: ToastGravity.CENTER)
                            } else {
                              Fluttertoast.showToast(
                                  msg: StringConfiguration().uiString(UiStringType.TOAST_MESSAGE_08),
                                  backgroundColor: Colors.white,
                                  textColor: Colors.black,
                                  gravity: ToastGravity.CENTER)
                            }
                          });
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: size.width * 0.43,
                          height: size.height * 0.055,
                          decoration: const BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                          child: const Center(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          );
        });
  }
}
