import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';

class Selected_box_popup {


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
                          "Lv5,Specical Box",
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
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
                        margin: EdgeInsets.fromLTRB(15.w, 35.h, 15.w, 0.h),

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
                            width: 120.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            child: Center(
                              child: Text(
                                "Boost",
                                style: TextStyle(color: Colors.white),
                              ),
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
          return Center(
            child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: Colors.black),
              child: Container(
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
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(10.w, 10.h, 170.w, 0.h),

                        child: Text(
                          "Boost Cost",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 260.w,
                          height: 65.h,
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
                                    margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                    child: Image.asset(
                                      "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                      width: size.width * 0.06,
                                    ),
                                  ),
                                  Text(
                                    "XPER",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),


                              Container(
                                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

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
                      ),
                      Text(

                        "Do you want to proceed with the boost?",
                        style: TextStyle(fontSize: 12, color: Colors.grey),

                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20),
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
            ),
          );
        });
  }
}
