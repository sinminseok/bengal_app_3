import 'package:bengal_app/pages/car/Car_Detail_FrameView2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../../controller/CarsNft_controller/carnft_controller.dart';
import '../../../models/car.dart';
import '../../../utils/font.dart';

class Car_Maindetail_Widget extends StatefulWidget {
  CarNft carNft;

  Car_Maindetail_Widget({Key? key, required this.carNft}) : super(key: key);

  @override
  _Car_Maindetail_WidgetState createState() => _Car_Maindetail_WidgetState();
}

class _Car_Maindetail_WidgetState extends State<Car_Maindetail_Widget> {
  var select_carnft_controller;

  @override
  void initState() {
    print("INITT");
    super.initState();
  }

  @override
  void dispose(){
    print("dispose");
    super.dispose();
  }

  load_nftcar() async {
    select_carnft_controller =
        await Provider.of<Carnft_Controller>(context, listen: false);
    select_carnft_controller!.selected(widget.carNft);

    return select_carnft_controller;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: load_nftcar(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          //해당 부분은 data를 아직 받아 오지 못했을때 실행되는 부분을 의미한다.
          if (snapshot.hasData == false) {
            return CircularProgressIndicator();
          }
          //error가 발생하게 될 경우 반환하게 되는 부분
          else if (snapshot.hasError) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Error: ${snapshot.error}',
                style: TextStyle(fontSize: 15),
              ),
            );
          }
          // 데이터를 정상적으로 받아오게 되면 다음 부분을 실행하게 되는 것이다.
          else {
            return GestureDetector(


              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: Car_Detail_FrameView2(
                          carNft: widget.carNft,
                          carBuy: false,
                        )));
              },
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/common/cars/car1.png",
                    width: 390.w,
                    height: 225.33.h,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.w, 200.h, 0.w, 0.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 200.w,
                            height: 18.h,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(14.w, 200.h, 0.w, 0.h),
                            width: 200.w,
                            height: 18.h,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  //color: Colors.white,
                                  margin:
                                      EdgeInsets.fromLTRB(7.w, 0.h, 0.w, 0.h),
                                  child: Text(
                                    "Lv ${select_carnft_controller.selected_carnft.level}",
                                    style: Font.lato(const Color(0xFF342B35),
                                        FontWeight.bold, 12.sp),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/lobby/icons/circle_icon.png",
                                      width: 12.w,
                                      height: 12.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          5.w, 0.h, 0.w, 0.h),
                                      child: Text(
                                        "${widget.carNft.id}",
                                        style: Font.lato(
                                            const Color(0xFF342B35),
                                            FontWeight.bold,
                                            12.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  "assets/images/lobby/icons/limited_button.png",
                                  width: 57.w,
                                  height: 18.h,
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 236.h, 0.w, 0.h),
                      width: 330.w,
                      //height: 15.h,
                      child: Column(
                        children: [
                          LinearPercentIndicator(
                            center: Text(
                              "Durability 45.50%",
                              style: Font.lato(const Color(0xFF746F7B),
                                  FontWeight.w400, 9.sp),
                            ),
                            barRadius: const Radius.circular(10),
                            width: 330.w,
                            lineHeight: 15.h,
                            percent: 0.5,
                            backgroundColor: Colors.grey.shade200,
                            progressColor: const Color(0xFFF4C84D),
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LinearPercentIndicator(
                                barRadius: const Radius.circular(10),
                                width: 239.w,
                                lineHeight: 4.h,
                                percent: 0.7,
                                backgroundColor: Colors.grey.shade200,
                                progressColor: const Color(0xFFF4C84D),
                              ),
                              Text(
                                "1000 km(Fine)",
                                style: Font.lato(const Color(0xFFF4C84D),
                                    FontWeight.w700, 9.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
            );
          }
        });
  }
}
