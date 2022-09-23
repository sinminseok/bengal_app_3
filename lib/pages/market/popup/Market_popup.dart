import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';

class Market_popup {
  void showDialog(Size size, BuildContext context) {
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
                        decoration: BoxDecoration(
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
                        "assets/images/common/cars/car1.png",
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
                                  Text("737377373"),
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
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 6.h),

                              width:200.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Type",style: TextStyle(color: Colors.grey.shade700,fontSize: 14),),
                                  Text("SEDAN",style: TextStyle(color: kPrimaryColor,fontSize: 14),)
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 6.h),
                              width:200.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Grade",style: TextStyle(color: Colors.grey.shade700,fontSize: 14),),
                                  Text("Ultimate",style: TextStyle(color: kPrimaryColor,fontSize: 14),)
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 6.h),
                              width:200.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Level",style: TextStyle(color: Colors.grey.shade700,fontSize: 14),),
                                  Text("22",style: TextStyle(color: kPrimaryColor,fontSize: 14),)
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 5.h),
                              width:200.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Mint",style: TextStyle(color: Colors.grey.shade700,fontSize: 14),),
                                  Text("9",style: TextStyle(color: kPrimaryColor,fontSize: 14),)
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
                              Text("Price",style: TextStyle(color: kPrimaryColor,fontSize: 14),),
                              SizedBox(width: size.width*0.1,),
                              Text("6,40",style: TextStyle(color: kPrimaryColor,fontSize: 14),)
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
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: size.width * 0.43,
                          height: size.height * 0.055,
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                          child: Center(
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
