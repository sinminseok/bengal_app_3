import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../types/constants.dart';
import '../../widget/Transfer_password_Widget.dart';



class Transfer_Password_View extends StatefulWidget {
  const Transfer_Password_View({Key? key}) : super(key: key);

  @override
  _Transfer_Password_ViewState createState() => _Transfer_Password_ViewState();
}

class _Transfer_Password_ViewState extends State<Transfer_Password_View> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
                child: Image.asset(
                  "assets/images/wallet/logo.png",
                  width: 191.w,
                  height: 30.h,
                )),

            Container(
              width: 160.w,
              height: 30.h,
              margin: EdgeInsets.fromLTRB(0.w, 25.h, 0.w, 0.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: Colors.white
                )
              ),

              child: Center(
                child: Text("Secured Wallet",
                    style: TextStyle(color: Colors.white, fontSize: 16.sp,fontWeight: FontWeight.w700)),
              ),
            ),


            Container(
              margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),

              child: Text("ENTER YOUR PASSWORD",
                  style: TextStyle(color: Colors.grey.shade200, fontSize: 10.sp)),
            ),
            Wallet_Transfer_password_Widget(),


          ],
        ),
      ),
    );
  }
}