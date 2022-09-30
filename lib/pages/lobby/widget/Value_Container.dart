import 'package:bengal_app/pages/lobby/widget/value_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import '../../../controller/storage_controller.dart';
import '../../../common/string_configuration.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';

class Value_Container extends StatefulWidget {
  String XPER_Value;
  String PER_Value;
  String Charge_Value;

  Value_Container(
      {required this.XPER_Value,
      required this.PER_Value,
      required this.Charge_Value});

  @override
  _Value_ContainerState createState() => _Value_ContainerState();
}

class _Value_ContainerState extends State<Value_Container> {
  bool today_status_bool = false;
  bool total_status_bool = false;
  bool selected_status_bool = false;

  @override
  void initState() {
    // TODO: implement initState
    today_status_bool = true;
    total_status_bool = false;
    selected_status_bool = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
      child: Container(
        width: 360.w,
        height: 114.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 5.0,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
            color: Colors.white),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15.w, 12.h, 0.w, 0.h),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          today_status_bool = true;
                          total_status_bool = false;
                          selected_status_bool = false;
                        });
                      },
                      child: Text(
                        StringConfiguration()
                            .uiString(UiStringType.LOBBY_TAB_01),
                        style: Font.lato(
                            today_status_bool == true
                                ? Colors.black
                                : Colors.grey,
                            FontWeight.w700,
                            12.sp),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.w, 12.h, 0.w, 0.h),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            today_status_bool = false;
                            total_status_bool = true;
                            selected_status_bool = false;
                          });
                        },
                        child: Text(
                          StringConfiguration()
                              .uiString(UiStringType.LOBBY_TAB_02),
                          style: Font.lato(
                              total_status_bool == true
                                  ? Colors.black
                                  : Colors.grey,
                              FontWeight.w700,
                              12.sp),
                        )),
                  ),
                ),
                InkWell(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.w, 12.h, 0.w, 0.h),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            today_status_bool = false;
                            total_status_bool = false;
                            selected_status_bool = true;
                          });
                        },
                        child: Text(
                          StringConfiguration()
                              .uiString(UiStringType.LOBBY_TAB_03),
                          style: Font.lato(
                              selected_status_bool == true
                                  ? Colors.black
                                  : Colors.grey,
                              FontWeight.w700,
                              12.sp),
                        )),
                  ),
                ),
              ],
            ),
            today_status_bool != true
                ? Container()
                : Container(
                    margin: EdgeInsets.fromLTRB(15.w, 16.h, 0.w, 0.h),
                    width: 360.w,
                    height: 60.h,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                  width: 20.w,
                                  height: 20.h,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 6.h),
                                  width: 200.w,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 3.h),

                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              StringConfiguration().uiString(
                                                  UiStringType.TOKEN_NAME_01),
                                              style: Font.lato(
                                                  const Color(0xFF8E8E8E),
                                                  FontWeight.w700,
                                                  12.sp),
                                            ),
                                            Text(
                                              "${widget.XPER_Value}/${StorageController().commonData.initialInfo.dailyLimitXPer}",
                                              style: Font.lato(
                                                  const Color(0xFF8E8E8E),
                                                  FontWeight.w700,
                                                  12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      LinearPercentIndicator(
                                        barRadius: const Radius.circular(10),
                                        width: 200.w,
                                        lineHeight: 2.h,
                                        percent: 0.7,
                                        progressColor: Colors.grey,
                                        padding: const EdgeInsets.only(top: 0),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 8.h),
                                  child: Image.asset(
                                    "assets/images/lobby/icons/appbar_icons/per_icon.png",
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(6.w, 8.h, 0.w, 0.h),
                                  width: 200.w,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 3.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              StringConfiguration().uiString(
                                                  UiStringType.TOKEN_NAME_02),
                                              style: Font.lato(
                                                  const Color(0xFFECB133),
                                                  FontWeight.w700,
                                                  12.sp),
                                            ),
                                            Text(
                                              "${widget.PER_Value}/${StorageController().commonData.initialInfo.dailyLimitPer}",
                                              style: Font.lato(
                                                  const Color(0xFFECB133),
                                                  FontWeight.w700,
                                                  12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      LinearPercentIndicator(
                                        barRadius: const Radius.circular(10),
                                        width: 200.w,
                                        lineHeight: 2.h,
                                        percent: 0.4,
                                        progressColor: const Color(0xFFECB133),
                                        padding: const EdgeInsets.only(top: 0),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(16.w, 0.h, 0.w, 0.h),
                                  child: FAProgressBar(
                                    backgroundColor: Colors.grey.shade300,
                                    maxValue: 100,
                                    borderRadius: BorderRadius.circular(30),
                                    verticalDirection: VerticalDirection.up,
                                    progressColor: kCharColor,
                                    direction: Axis.vertical,
                                    currentValue: 50,
                                    displayText: null,
                                    size: 20.w,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 17.w),
                                  child: Center(
                                      child: Image.asset(
                                    "assets/images/lobby/lightning.png",
                                    width: 16.w,
                                    height: 15.41.h,
                                  )),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Row(
                                    children: [
                                      Text(
                                        "${widget.Charge_Value}",
                                        style: Font.lato(const Color(0xFF15BEA0),
                                            FontWeight.w700, 12.sp),
                                      ),
                                      Text(
                                        "/16.0",
                                        style: Font.lato(const Color(0xFF15BEA0),
                                            FontWeight.w700, 8.sp),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),

                                    width: 50.w,
                                    height: 1.h,
                                    color: Colors.grey.shade300,
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(top: 6.w),
                                    child: Text(
                                      StringConfiguration()
                                          .uiString(UiStringType.LOBBY_TAB_05),
                                      style: Font.lato(const Color(0xFF766D84),
                                          FontWeight.w400, 8.sp),
                                    ),
                                  ),
                                  Text(
                                    "4h 59m",
                                    style: Font.lato(const Color(0xFF15BEA0),
                                        FontWeight.w700, 8.sp),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
            total_status_bool != true
                ? Container()
                : Container(
                    margin: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 0.h),
                    width: 330.w,
                    height: 60.h,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Value_Detail_Widget(
                                "gauge_icon", "Speed", "21.8", "10.0", size),
                            Container(
                              margin: EdgeInsets.fromLTRB(4.w, 0.h, 0.w, 0.h),
                              child: Value_Detail_Widget(
                                  "dice_icon", "Luck", "21.8", "10.0", size),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),
                              child: Value_Detail_Widget("charge_icon",
                                  "Charge", "21.8", "10.0", size),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(4.w, 4.h, 0.w, 0.h),
                              child: Value_Detail_Widget("repair_icon",
                                  "Repair", "21.8", "10.0", size),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
            selected_status_bool != true
                ? Container()
                : Container(
                    margin: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 0.h),
                    width: 330.w,
                    height: 60.h,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Value_Detail_Widget(
                                "gauge_icon", "Speed", "21.8", "10.0", size),
                            Container(
                              margin: EdgeInsets.fromLTRB(4.w, 0.h, 0.w, 0.h),
                              child: Value_Detail_Widget(
                                  "dice_icon", "Luck", "21.8", "10.0", size),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),
                              child: Value_Detail_Widget("charge_icon",
                                  "Charge", "21.8", "10.0", size),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(4.w, 4.h, 0.w, 0.h),
                              child: Value_Detail_Widget("repair_icon",
                                  "Repair", "21.8", "10.0", size),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
