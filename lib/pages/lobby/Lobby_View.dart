import 'package:bengal_app/pages/lobby/widget/Box_Container.dart';
import 'package:bengal_app/pages/lobby/widget/Car_Main_Widget.dart';
import 'package:bengal_app/pages/lobby/widget/Game_play_Widget.dart';
import 'package:bengal_app/pages/lobby/widget/Value_Container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common/string_configuration.dart';
import '../../types/constants.dart';
import '../../types/string_type.dart';
import '../../utils/font.dart';

class Lobby_View extends StatefulWidget {
  const Lobby_View({Key? key}) : super(key: key);

  @override
  _Lobby_ViewState createState() => _Lobby_ViewState();
}

class _Lobby_ViewState extends State<Lobby_View> {
  bool current_car = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kAppbarColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Buy a car Widget
            current_car == true
                ? InkWell(
                    onTap: () {
                      // setState(() {
                      //   current_car = !current_car;
                      // });
                    },
                    child: Car_Main_Widget(
                        context, size, 10, 123123, 45.4, 5000, "Fine"),
                  )
                : InkWell(
                    onTap: () {
                      setState(() {
                        current_car = !current_car;
                      });
                    },
                    child: Container(
                      width: size.width,
                      height: size.height * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 0,
                            blurRadius: 5.0,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                                width: size.width * 0.93,
                                height: size.height * 0.28,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50.0),
                                child: Center(
                                    child: Image.asset(
                                  "assets/images/lobby/car_empty_img.png",
                                  width: size.width * 0.7,
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.26,
                                    ),
                                    Image.asset(
                                      "assets/images/lobby/icons/plus_icon_3.png",
                                      width: size.width * 0.07,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Buy a car and enjoy the game",
                                        style: TextStyle(fontSize: 12.3),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

            //XPER Value,Per Value,Charge Value
            Value_Container(
              XPER_Value: '70',
              PER_Value: '0.32',
              Charge_Value: '12.0',
            ),

            BoxContainer_Widget(),

            Container(
              margin: EdgeInsets.fromLTRB(16.w, 23.h, 15.w, 0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   width: size.width * 0.07,
                  // ),
                  Text(
                    StringConfiguration()
                        .uiString(UiStringType.LOBBY_SPECIALBOX_04),
                    style: Font.lato(
                        const Color(0xFF342B35), FontWeight.bold, 16.sp),
                  ),
                  // SizedBox(
                  //   width: size.width * 0.6,
                  // ),
                  InkWell(
                    onTap: () {
                      print("movee");
                    },
                    child: Text(
                      StringConfiguration()
                          .uiString(UiStringType.LOBBY_SPECIALBOX_05),
                      style: Font.lato(
                          const Color(0xFF8B80F8), FontWeight.w400, 10.sp),
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: size.height * 0.02,
            // ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
              child: Container(
                width: 360.w,
                height: 100.h,
                child: ListView.builder(
                    //사용할 게임수 builder
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext ctx, int idx) {
                      return Game_Play_Widget(
                          size, "Jewel Match", "0.08", "0.05", "10");
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
