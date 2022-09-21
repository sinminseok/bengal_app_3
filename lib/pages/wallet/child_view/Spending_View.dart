import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../../../types/constants.dart';
import 'Spending_bottom_container.dart';
import 'Transfer_Password_View.dart';

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
              height: 56.h,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                    width: 30.w,
                    height: 30.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "XPER",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.47,
                  ),
                  Text(
                    "$xper_value",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 1.3),
              child: Container(
                height: 56.h,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: kPerColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/lobby/icons/appbar_icons/per_icon.png",
                      width: size.width * 0.08,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "PER",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kPerColor),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.47,
                    ),
                    Text(
                      "20.323",
                      style: TextStyle(fontSize: 16, color: kPerColor),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 1.3),
              child: Container(
                height: 56.h,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: kCharColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/lobby/icons/appbar_icons/havah_icon.png",
                      width: size.width * 0.08,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "HVH",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kCharColor),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.47,
                    ),
                    Text(
                      "$hvh_value",
                      style: TextStyle(fontSize: 16, color: kCharColor),
                    )
                  ],
                ),
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
