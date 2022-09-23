import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';

class Traded_popup{


  TextEditingController _percentvalue = TextEditingController();
  Future<String?> openDialog(context) => showAnimatedDialog<String>(

      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            content: DefaultTextStyle(
                style: TextStyle(fontSize: 16, color: Colors.black),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        bottom: 300.h,
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
                        height: 300.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 300.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  color: kPrimaryColor),
                              child: Center(
                                  child: Text(
                                    "SLIPPAGE TOLERANCE",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                            ),

                            Container(
                                margin: EdgeInsets.fromLTRB(10.w, 30.h, 160.w, 0.h),
                                child: Text("Trade information",style: TextStyle(color: Colors.grey.shade600,fontSize: 12,fontWeight: FontWeight.bold),)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    _percentvalue.text = "0.1";
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 5.w, 0.h),

                                    width: 80.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey.shade300),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Center(
                                      child: Text("0.1%",style: TextStyle(color: Colors.grey.shade500,fontSize: 12)),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    _percentvalue.text = "0.5";
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),

                                    width: 80.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey.shade300),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Center(
                                      child: Text("0.5%",style: TextStyle(color: Colors.grey.shade500,fontSize: 12)),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    _percentvalue.text = "1.0";
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(5.w, 10.h, 15.w, 0.h),

                                    width: 80.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey.shade300),
                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Center(
                                      child: Text("1.0%",style: TextStyle(color: Colors.grey.shade500,fontSize: 12)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
                              width: 260.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade200),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),


                              child: TextField(
                                autofocus: true,

                                keyboardType: TextInputType.number,
                                controller: _percentvalue,

                                decoration: new InputDecoration(

                                    border: InputBorder.none,
                                    suffixText: "%",

                                    focusColor: kPrimaryColor,
                                    hoverColor: kPrimaryColor,
                                    fillColor: kPrimaryColor,
                                    labelStyle: TextStyle(color: kPrimaryColor),
                                    hintStyle: TextStyle(
                                        fontSize: 12, color: Colors.grey.shade500),
                                    contentPadding: EdgeInsets.only(
                                        left: 15, bottom: 18, top: 0, right: 5),
                                    hintText: '0'),
                              ),
                            ),


                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context,_percentvalue.text);
                              },
                              child: Container(
                                width: 120.w,
                                height: 34.h,
                                margin: EdgeInsets.fromLTRB(
                                    15.w, 30.h, 15.w, 0.h),
                                decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30))),
                                child: Center(
                                  child: Text(
                                    "Confirm",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                )),
          );
        },
      ));


}
