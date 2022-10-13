import 'package:bengal_app/utils/dataType.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';
import "../../../utils/font.dart";

class SpecialBoxOpenItem {

  Widget show(BuildContext context, String itemAsset, String text1, String text2, double price) {
    return Container(
        width: 110.w,
        height: 139.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(
            width: 2,
            color: kPrimaryColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Image.asset(itemAsset,
                width: 50.w,
                height: 50.h,),
            ),
            Text(
              text1,
              style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 14.sp),
            ),
            Text(
              text2,
              style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 14.sp),
            ),
            Container(
              width: 110.w,
              height: 30.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: kPrimaryColor),
              child: Center(
                  child: Text(
                    price.asString(),
                    style: Font.lato(Colors.white, FontWeight.bold, 16.sp),
                  )),
            ),
          ],
        ));
  }
}
