import 'package:bengal_app/pages/lobby/widget/value_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import '../../../controller/storage_controller.dart';
import '../../../common/string_configuration.dart';
import '../../../models/car.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';

class Value_Container extends StatefulWidget {
  Value_Container();

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

  CarNft? selectedCar() => StorageController().getLobbySelectedCar();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
      child: Container(
        width: 360.w,
        height: 114.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: const Color(0xffD1D4DD).withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 4.0,
                offset: const Offset(0, 4), // changes position of shadow
              ),
            ],
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 241.w,
              height: 29.h,
              child: Container(
                margin: EdgeInsets.fromLTRB(15.w, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          today_status_bool = true;
                          total_status_bool = false;
                          selected_status_bool = false;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: today_status_bool == true,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: TXT_SUB_746F7B,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                              ),
                              child: SizedBox(
                                width: 18.w,
                                height: 2.h,
                              ),
                            ),
                          ),
                          Text(
                            StringConfiguration()
                                .uiString(UiStringType.LOBBY_TAB_01),
                            style: Font.lato(
                                today_status_bool == true
                                    ? TXT_SUB_746F7B
                                    : const Color(0xffE4E4E4),
                                FontWeight.w700,
                                12.sp),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          today_status_bool = false;
                          total_status_bool = true;
                          selected_status_bool = false;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: total_status_bool == true,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: TXT_SUB_746F7B,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                              ),
                              child: SizedBox(
                                width: 18.w,
                                height: 2.h,
                              ),
                            ),
                          ),
                          Text(
                            StringConfiguration()
                                .uiString(UiStringType.LOBBY_TAB_02),
                            style: Font.lato(
                                total_status_bool == true
                                    ? TXT_SUB_746F7B
                                    : const Color(0xffE4E4E4),
                                FontWeight.w700,
                                12.sp),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          today_status_bool = false;
                          total_status_bool = false;
                          selected_status_bool = true;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: selected_status_bool == true,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: TXT_SUB_746F7B,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                              ),
                              child: SizedBox(
                                width: 18.w,
                                height: 2.h,
                              ),
                            ),
                          ),
                          Text(
                            StringConfiguration()
                                .uiString(UiStringType.LOBBY_TAB_03),
                            style: Font.lato(
                                selected_status_bool == true
                                    ? TXT_SUB_746F7B
                                    : const Color(0xffE4E4E4),
                                FontWeight.w700,
                                12.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                                        margin: EdgeInsets.fromLTRB(
                                            0.w, 0.h, 0.w, 3.h),
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
                                              "${StorageController().miningResultList!.getTodayMiningTotalXPerAmount()}/${StorageController().commonData.initialInfo.dailyLimitXPer}",
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
                                        backgroundColor: Colors.grey.shade100,
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
                                        margin: EdgeInsets.fromLTRB(
                                            0.w, 0.h, 0.w, 3.h),
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
                                              "${StorageController().miningResultList!.getTodayMiningTotalPerAmount()}/${StorageController().commonData.initialInfo.dailyLimitPer}",
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
                                        backgroundColor: Colors.grey.shade100,
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
                                  width: 19.w,
                                  margin:
                                      EdgeInsets.fromLTRB(16.w, 0.h, 0.w, 0.h),
                                  child: RotatedBox(
                                    quarterTurns: -1,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: LinearProgressIndicator(
                                        backgroundColor: Colors.grey.shade100,

                                        color: kCharColor,
                                        value: 0.7,
                                      ),
                                    ),
                                  ),
                                ),

                                // Container(
                                //   margin:
                                //       EdgeInsets.fromLTRB(16.w, 0.h, 0.w, 0.h),
                                //   child: FAProgressBar(
                                //
                                //     backgroundColor: Colors.grey.shade300,
                                //     maxValue: StorageController().commonData.initialInfo.maxPower,
                                //     borderRadius: BorderRadius.circular(30),
                                //     verticalDirection: VerticalDirection.up,
                                //     progressColor: kCharColor,
                                //     direction: Axis.vertical,
                                //     currentValue: StorageController().account!.power,
                                //     displayText: null,
                                //     size: 20.w,
                                //   ),
                                // ),
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
                                        "${StorageController().account!.power}",
                                        style: Font.lato(
                                            const Color(0xFF15BEA0),
                                            FontWeight.w700,
                                            12.sp),
                                      ),
                                      Text(
                                        "/${StorageController().commonData.initialInfo.maxPower}",
                                        style: Font.lato(
                                            const Color(0xFF15BEA0),
                                            FontWeight.w700,
                                            8.sp),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),
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
                                "gauge_icon",
                                "Speed",
                                StorageController().carNftList!.getTotalSpeed(),
                                10.0,
                                size),
                            Container(
                              margin: EdgeInsets.fromLTRB(4.w, 0.h, 0.w, 0.h),
                              child: Value_Detail_Widget(
                                  "dice_icon",
                                  "Luck",
                                  StorageController()
                                      .carNftList!
                                      .getTotalLuck(),
                                  10.0,
                                  size),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),
                              child: Value_Detail_Widget(
                                  "charge_icon",
                                  "Charge",
                                  StorageController()
                                      .carNftList!
                                      .getTotalCharge(),
                                  10.0,
                                  size),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(4.w, 4.h, 0.w, 0.h),
                              child: Value_Detail_Widget(
                                  "repair_icon",
                                  "Repair",
                                  StorageController()
                                      .carNftList!
                                      .getTotalRepair(),
                                  10.0,
                                  size),
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
                            Value_Detail_Widget("gauge_icon", "Speed",
                                selectedCar()?.speed ?? 0, 10.0, size),
                            Container(
                              margin: EdgeInsets.fromLTRB(4.w, 0.h, 0.w, 0.h),
                              child: Value_Detail_Widget("dice_icon", "Luck",
                                  selectedCar()?.lucky ?? 0, 10.0, size),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),
                              child: Value_Detail_Widget(
                                  "charge_icon",
                                  "Charge",
                                  selectedCar()?.charge ?? 0.0,
                                  10.0,
                                  size),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(4.w, 4.h, 0.w, 0.h),
                              child: Value_Detail_Widget(
                                  "repair_icon",
                                  "Repair",
                                  selectedCar()?.repair ?? 0.0,
                                  10.0,
                                  size),
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
