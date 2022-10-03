import 'package:bengal_app/types/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/string_configuration.dart';
import '../../../models/game.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';
import '../popup/selected_box_popup.dart';

Widget BoxContainer_Detail_Widget(
    //parameter 는 mingingbox로 변경
BuildContext context, bool isempty, bool ready, bool during, String? during_value) {
  return InkWell(
    onTap: (){
      //박스가 비어있을땐 다른 popup창

      Selected_box_popup().showDialog(context);
    },
    child: Container(
      margin: EdgeInsets.fromLTRB(5.w, 10.h, 0.w, 10.h),
          width: 78.w,
          height: 50.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  //박스가 비어있을때
                  isempty != true
                      ? Container()
                      : Container(
                    margin: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),

                    child: Image.asset(
                      "assets/images/lobby/boxes/empty_box.png",
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                  //박스가 준비되었을때
                  ready != true
                      ? Container()
                      : Container(
                    margin: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),
                    child: Image.asset(
                      "assets/images/lobby/boxes/ready_box.png",
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                  during != true
                      ? Container()
                      : Container(
                    margin: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),
                    child: Image.asset(
                      "assets/images/lobby/boxes/during_box.png",
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),

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
              ),
              //ready 상태일때 박스 Lv
              ready!=true?Container():Container(
                  margin: EdgeInsets.fromLTRB(6.w, 5.h, 0.w, 0.h),

                  child: Text("Lv2",style: TextStyle(color: kPrimaryColor,fontSize: 8),)),
              //during 상태일때 박스 Lv
              during!=true?Container():Container(
                  margin: EdgeInsets.fromLTRB(6.w, 5.h, 0.w, 0.h),

                  child: Text("Lv2",style: TextStyle(color: Colors.grey.shade500,fontSize: 8),)),
            ],
          ),
    ),
  );
}
