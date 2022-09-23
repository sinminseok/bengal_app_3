import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';

class Address_popup {
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
                  height: 380.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width:300.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: kPrimaryColor),
                        child: Center(
                            child: Text(
                          "WALLET ACCOUNT",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                        child: Image.asset(
                          "assets/images/wallet/png.png",
                          width: 200.w,
                          height: 200.h,
                        ),
                      ),
                      Text(
                        "ASDASDASFASFASFASFASFASFAS",
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                        width: 200.w,
                        height: 1.h,
                        color: Colors.grey,
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
                          height: 36.h,
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius:
                              BorderRadius.all(Radius.circular(35))),
                          child: Center(
                            child: Text(
                              "Copy Address",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          );
        });
  }

  void showDialog_question(Size size, BuildContext context) {
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
                  height: 220.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 300.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: kPrimaryColor),
                        child: Center(
                            child: Text(
                              "SPENDING ACCOUNT",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ),


                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 40.h, 15.w, 0.h),

                        child: Text(
                          "    To use token in the Perplay App. \n you must hold Tokens in this account",
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                "Ok",
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
}
