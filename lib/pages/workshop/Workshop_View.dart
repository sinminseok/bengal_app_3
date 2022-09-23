import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../types/constants.dart';
import 'child_view/Plus_Car_View.dart';

class Workshop_View extends StatefulWidget {
  const Workshop_View({Key? key}) : super(key: key);

  @override
  _Workshop_ViewState createState() => _Workshop_ViewState();
}

class _Workshop_ViewState extends State<Workshop_View> {
  bool Mint_selected = true;
  bool Enhance_selected = false;
  bool GemUpgrade_selected = false;

  bool plus_ontap = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            width: 390.w,
            height: 65.h,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Mint_selected = true;
                            Enhance_selected = false;
                            GemUpgrade_selected = false;
                          });
                        },
                        child: Container(
                          width: 116.w,
                          height: 37.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              color: Mint_selected != true
                                  ? Colors.white
                                  : kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Mint",
                              style: TextStyle(
                                  color: Mint_selected != true
                                      ? Colors.grey
                                      : Colors.white),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Mint_selected = false;
                            Enhance_selected = true;
                            GemUpgrade_selected = false;
                          });
                        },
                        child: Container(
                          width: 116.w,
                          height: 37.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              color: Enhance_selected != true
                                  ? Colors.white
                                  : kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Enhance",
                              style: TextStyle(
                                  color: Enhance_selected != true
                                      ? Colors.grey
                                      : Colors.white),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Mint_selected = false;
                            Enhance_selected = false;
                            GemUpgrade_selected = true;
                          });
                        },
                        child: Container(
                          width: 116.w,
                          height: 37.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              color: GemUpgrade_selected != true
                                  ? Colors.white
                                  : kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Gem Upgrade",
                              style: TextStyle(
                                  color: GemUpgrade_selected != true
                                      ? Colors.grey
                                      : Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          plus_ontap == true
              ? Plus_Car_View()
              : Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(27.w, 150.h, 15.w, 0.h),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  plus_ontap = !plus_ontap;
                                });
                              },
                              child: Image.asset(
                                "assets/images/workshop/empty_plus.png",
                                width: 170.w,
                                height: 152.h,
                              )),
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/images/workshop/empty_plus.png",
                                width: 170.w,
                                height: 152.h,
                              )),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/workshop/sub_machine.png",
                      width: 230.w,
                      height: 80.h,
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.h),
                        child: Text("Select a Car for Minting"))
                  ],
                )
        ],
      ),
    );
  }
}
