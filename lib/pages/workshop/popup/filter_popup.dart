import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';
import '../../inventory/widget/popup_widgets/Inventory_popup_Type_Widget.dart';
import '../../inventory/widget/popup_widgets/level_thumb_widget.dart';

class Workshop_Filter_popup {
  bool level_bool = false;
  bool speed_bool = false;
  bool luck_bool = false;
  bool charge_bool = false;
  bool repair_bool = false;
  bool mint_bool = false;

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
          return StatefulBuilder(builder: (context, setState) {
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
                          bottom: 660.h,
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
                          width: 350.w,
                          height: 660.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 30.h, 15.w, 0.h),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  3.w, 0.h, 6.w, 0.h),
                                              width: 24.w,
                                              height: 24.h,
                                              child: Image.asset(
                                                  "assets/images/common/filter_icon.png"),
                                            ),
                                            Text(
                                              "Filter",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 30.h, 15.w, 0.h),
                                        child: Text(
                                          "Clear Filter",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 12),
                                        )),
                                  ],
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 20.h),
                                  width: 350.w,
                                  height: 1.h,
                                  color: Colors.grey.shade400,
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.w, 5.h, 0.w, 20.h),
                                    child: Inventory_popup_Type_Widget()),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.w, 20.h, 0.w, 20.h),
                                    child: Inventory_popup_Grade_Widget()),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        15.w, 30.h, 15.w, 0.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Level",
                                          style: TextStyle(
                                            color: Colors.grey.shade500,
                                          ),
                                        ),

                                        Checkbox(
                                          activeColor: kPrimaryColor,
                                          value: level_bool,
                                          onChanged: (value) {
                                            setState(() => level_bool = value!);
                                          },
                                        ),
                                        // Checkbox(value: level_bool)
                                      ],
                                    )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.w, 10.h, 0.w, 10.h),
                                    child: Inventory_Thumb_Widget(
                                      start_value: 10,
                                      end_value: 20,
                                      min_value: 1,
                                      max_value: 30,
                                    )),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      15.w, 30.h, 15.w, 0.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Speed",
                                        style: TextStyle(
                                          color: Colors.grey.shade500,
                                        ),
                                      ),

                                      Checkbox(
                                        activeColor: kPrimaryColor,
                                        value: speed_bool,
                                        onChanged: (value) {
                                          setState(() => speed_bool = value!);
                                        },
                                      ),
                                      // Checkbox(value: level_bool)
                                    ],
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.w, 10.h, 0.w, 10.h),
                                    child: Inventory_Thumb_Widget(
                                      start_value: 10,
                                      end_value: 20,
                                      min_value: 1,
                                      max_value: 30,
                                    )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        15.w, 30.h, 15.w, 0.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Luck",
                                          style: TextStyle(
                                            color: Colors.grey.shade500,
                                          ),
                                        ),

                                        Checkbox(
                                          activeColor: kPrimaryColor,
                                          value: luck_bool,
                                          onChanged: (value) {
                                            setState(() => luck_bool = value!);
                                          },
                                        ),
                                        // Checkbox(value: level_bool)
                                      ],
                                    )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.w, 10.h, 0.w, 10.h),
                                    child: Inventory_Thumb_Widget(
                                      start_value: 10,
                                      end_value: 20,
                                      min_value: 1,
                                      max_value: 30,
                                    )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        15.w, 30.h, 15.w, 0.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Charge",
                                          style: TextStyle(
                                            color: Colors.grey.shade500,
                                          ),
                                        ),

                                        Checkbox(
                                          activeColor: kPrimaryColor,
                                          value: charge_bool,
                                          onChanged: (value) {
                                            setState(
                                                () => charge_bool = value!);
                                          },
                                        ),
                                        // Checkbox(value: level_bool)
                                      ],
                                    )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.w, 10.h, 0.w, 10.h),
                                    child: Inventory_Thumb_Widget(
                                      start_value: 10,
                                      end_value: 20,
                                      min_value: 1,
                                      max_value: 30,
                                    )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        15.w, 30.h, 15.w, 0.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Repair",
                                          style: TextStyle(
                                            color: Colors.grey.shade500,
                                          ),
                                        ),

                                        Checkbox(
                                          activeColor: kPrimaryColor,
                                          value: repair_bool,
                                          onChanged: (value) {
                                            setState(
                                                () => repair_bool = value!);
                                          },
                                        ),
                                        // Checkbox(value: level_bool)
                                      ],
                                    )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.w, 10.h, 0.w, 10.h),
                                    child: Inventory_Thumb_Widget(
                                      start_value: 10,
                                      end_value: 20,
                                      min_value: 1,
                                      max_value: 30,
                                    )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        15.w, 30.h, 15.w, 0.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Mint",
                                          style: TextStyle(
                                            color: Colors.grey.shade500,
                                          ),
                                        ),

                                        Checkbox(
                                          activeColor: kPrimaryColor,
                                          value: mint_bool,
                                          onChanged: (value) {
                                            setState(() => mint_bool = value!);
                                          },
                                        ),
                                        // Checkbox(value: level_bool)
                                      ],
                                    )),
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0.w, 10.h, 0.w, 10.h),
                                    child: Inventory_Thumb_Widget(
                                      start_value: 10,
                                      end_value: 20,
                                      min_value: 1,
                                      max_value: 30,
                                    )),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      63.w, 15.h, 15.w, 0.h),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      // showDialog2(size, context);
                                    },
                                    child: Container(
                                      width: size.width * 0.43,
                                      height: size.height * 0.055,
                                      decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(35))),
                                      child: Center(
                                        child: Text(
                                          "Confirm",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  )),
            );
          });
        });
  }
}
