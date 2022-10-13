import 'package:bengal_app/types/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/string_configuration.dart';
import '../../../models/game.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';
import '../popup/selected_box_popup.dart';

Widget BoxContainer_Detail_Widget(BuildContext context, MiningBox box) {
  return InkWell(
    onTap: (){
      if (box.isEmpty()) return;
      Selected_box_popup().showDialog(context, box);
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
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),
                      child: Image.asset(
                        box.getSpecialBoxAsset(),
                        height: 30.h,
                        width: 30.w,
                      ),
                    ),
                    box.getSpecialBoxLogoText(),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(6.w, 5.h, 0.w, 0.h),
                  child: box.getSpecialBoxLevelText()
              ),
            ],
          ),
    ),
  );
}
