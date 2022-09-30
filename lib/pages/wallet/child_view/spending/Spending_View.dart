import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../models/wallet.dart';
import '../../../../types/constants.dart';
import '../../../../utils/font.dart';
import 'Spending_bottom_container.dart';
import '../transfer/Transfer_Password_View.dart';

Widget Spending_View(
    Size size,BuildContext context, Wallet wallet) {
  return Column(

    children: [

      Container(
        margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),

        width: 390.w,
        height: 230.h,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),

              height: 54.h,
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
                        Container(
                          margin: EdgeInsets.fromLTRB(8.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "XPER",
                            style: Font.lato(Colors.grey, FontWeight.bold, 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    child: Text(
                      wallet.balanceXPerString(),
                      style: Font.lato(Colors.grey, FontWeight.w400, 16.sp),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),

              height: 54.h,
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
                        Container(
                          margin: EdgeInsets.fromLTRB(8.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "PER",
                            style: Font.lato(kPerColor, FontWeight.bold, 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    child: Text(
                      wallet.balancePerString(),
                      style: Font.lato(kPerColor, FontWeight.w400, 16.sp),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),

              height: 54.h,
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
                        Container(
                          margin: EdgeInsets.fromLTRB(8.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "HVH",
                            style: Font.lato(kCharColor, FontWeight.bold, 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    child: Text(
                      wallet.balanceHavahString(),
                      style: Font.lato(kCharColor, FontWeight.w400, 16.sp),
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
          margin: EdgeInsets.fromLTRB(0.w, 25.h, 0.w, 46.h),
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
