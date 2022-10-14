import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../common/string_configuration.dart';
import '../../../../models/car.dart';
import '../../../../types/constants.dart';
import '../../../../types/string_type.dart';
import '../../../../utils/font.dart';
import '../../../car/Car_Detail_FrameView2.dart';
import '../../popup/Market_popup2.dart';

class Market_Car_Card2 extends StatefulWidget {
  Size size;
  Color color;
      BuildContext context;

  CarNft car;
   Market_Car_Card2({
     Key? key,
     required this.size,
     required this.color,
     required this.context,
     required this.car
   }) : super(key: key);

  @override
  _Market_Car_Card2State createState() => _Market_Car_Card2State();
}

class _Market_Car_Card2State extends State<Market_Car_Card2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade,
                child: Car_Detail_FrameView2(
                  car: widget.car,
                  carBuy: true,
                )));
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 170.w,
            height: 270.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 3.h, 10.w, 9.h),
                      child: Text(
                        "Mint: ${widget.car.mintingCount}",
                        style: Font.lato(Colors.black, FontWeight.w400, 10.sp),
                      ),
                    ),
                  ],
                ),

                //car img
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    widget.car.getAssetImage(),
                    width: 150.w,
                    height: 86.72,
                    fit: BoxFit.fill,
                  ),
                ),
                //nftID
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 0.h),
                  width: 76.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all( Radius.circular(30.0) ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 12.w,
                        height: 12.h,
                        margin: EdgeInsets.fromLTRB(1.w, 1.h, 3.w, 1.h),
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(4.w, 0.h, 1.w, 2.h),
                          child: Text(
                            "#",
                            style: Font.lato(Colors.white, FontWeight.w400, 1.sp),
                          ),
                        ),
                      ),
                      Text(
                        "${widget.car.id}",
                        style: Font.lato(const Color(0xFF9196A5), FontWeight.bold, 8.sp),
                      )
                    ],
                  ),
                ),
                //Level
                Container(
                  margin: EdgeInsets.fromLTRB(63.w, 3.h, 3.w, 3.h),
                  child: Row(
                    children: [
                      Text(
                        "Level",
                        style: Font.lato(
                            const Color(0xFF746F7B), FontWeight.w400, 10.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0, bottom: 6),
                        child: Text(
                          "${widget.car.level}",
                          style: Font.lato(const Color(0xFF342B35), FontWeight.bold, 14.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(8.w, 0.h, 10.w, 5.h),

                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/inventory/card_icons/card_icon2.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                          Text(
                            "${widget.car.speed}",
                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 10.w, 5.h),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/inventory/card_icons/card_icon3.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                          Text(
                            "${widget.car.lucky}",
                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 10.w, 5.h),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/inventory/card_icons/card_icon4.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                          Text(
                            "${widget.car.charge}",
                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 10.w, 5.h),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/inventory/card_icons/card_icon1.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                          Text(
                            "${widget.car.repair}",
                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 3.h),
                      child: Text(
                        "${widget.car.price} HVH",
                        style: Font.lato(kPrimaryColor, FontWeight.bold, 12.sp),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 3.h),
                      child: InkWell(
                        onTap: () async{
                          if (!widget.car.isSell) Market_popup2().showDialog(widget.size, widget.context, widget.car);
                        },
                        child: Container(
                          width: 70.w,
                          height: 26.h,
                          margin: EdgeInsets.fromLTRB(0.w, 3.h, 0.w, 0.h),
                          decoration: BoxDecoration(
                            border: Border.all(color: kPrimaryColor),
                            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: Center(
                              child: Text(
                                StringConfiguration().uiString(UiStringType.MARKET_TAB_CARS_BUYPOPUP_01),
                                style: Font.lato(kPrimaryColor, FontWeight.w700, 12.sp),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          widget.car.isSell ?
          Positioned(
            right: 65.w,
            top: -10.h,
            child: Container(
              width: 44.w,
              height: 18.h,
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Center(child: Text("Selling",style: TextStyle(color: Colors.white,fontSize: 8.sp),)),
            ),
          ) :
          Container(),

          Positioned(
            left: -5.w,
            top: 5.h,
            child: Image.asset(
              "assets/images/common/tags/tag_${widget.car.getCarGradeString()}.png",
              fit: BoxFit.fill,
              width: 60.w,
              height: 20.h,
            ),
          ),
          Positioned(
              left: -1.w,
              top: 7.h,
              child: Text(
                widget.car.getCarTypeString().toUpperCase(),
                style: Font.lato(Colors.white, FontWeight.bold, 8.sp),
              )),
        ],
      ),
    );
  }
}
