import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/string_configuration.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';

Widget BoxContainer_Detail_Widget(
    Size size, bool isempty, bool ready, bool during, String? during_value) {
  return Padding(
    padding: const EdgeInsets.all(2.2),
    child: Container(
        width: 78.w,
        height: 50.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            SizedBox(height: 4.h,),
            isempty != true
                ? Container()
                : Image.asset(
                    "assets/images/lobby/boxes/empty_box.png",
                    height: 30.h,
                    width: 30.w,
                  ),
            ready != true
                ? Container()
                : Image.asset(
                    "assets/images/lobby/boxes/ready_box.png",
                    height: 30.h,
                    width: 30.w,
                  ),
            during != true
                ? Container()
                : Image.asset(
                    "assets/images/lobby/boxes/during_box.png",
                    height: 30.h,
                    width: 30.w,
                  ),
            SizedBox(height: 1.h,),
            isempty != true
                ? Container()
                : Text(
                    StringConfiguration().uiString(UiStringType.CAR_INFO_03),
                    style: Font.lato(
                        const Color(0xFFC3C3C3), FontWeight.bold, 8.sp),
                  ),
            ready != true
                ? Container()
                : Text(
                    StringConfiguration()
                        .uiString(UiStringType.LOBBY_SPECIALBOX_02),
                    style: Font.lato(
                        const Color(0xFF8B80F8), FontWeight.bold, 8.sp),
                  ),
            during != true
                ? Container()
                : Text(
                    "$during_value",
                    style: Font.lato(
                        const Color(0xFF746F7B), FontWeight.bold, 8.sp),
                  ),
          ],
        )),
  );
}
