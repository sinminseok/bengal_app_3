import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../types/constants.dart';
import 'Spending_bottom_container.dart';
import '../transfer/Transfer_Password_View.dart';

Widget Spending_View(
    Size size,BuildContext context, double xper_value, double per_value, double hvh_value) {
  return Column(

    children: [
      Container(
        margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),

        width: 360.w,
        height: 230.h,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

              height: 56.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                          "XPER",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    child: Text(
                      "$xper_value",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

              height: 56.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: kPerColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/per_icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                          "PER",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kPerColor),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    child: Text(
                      "$per_value",
                      style: TextStyle(fontSize: 16, color: kPerColor),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

              height: 56.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: kCharColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/havah_icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                          "HVH",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kCharColor),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    child: Text(
                      "$hvh_value",
                      style: TextStyle(fontSize: 16, color: kCharColor),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      InkWell(
        onTap: (){
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade,
                  child: Transfer_Password_View(

                  )));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 60.h),
          child: Image.asset(
            "assets/images/wallet/icons/transfer_button.png",
            width: 175.w,
            height: 46.h,
          ),
        ),
      ),

      Spending_bottom_container()
    ],
  );
}
