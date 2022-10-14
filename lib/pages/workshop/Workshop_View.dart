import 'package:bengal_app/pages/workshop/child_view/enhance/Enhance_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../types/constants.dart';
import '../../utils/font.dart';
import '../../utils/toast.dart';
import 'child_view/mint/Mint_View.dart';
import 'child_view/mint/Plus_Car_View.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              width: 390.w,
              height: 90.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.grey.shade300), bottom: BorderSide(color: Colors.grey.shade300)),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
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
                                    const BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Mint",
                                style: Font.lato(Mint_selected != true
                                    ? Colors.grey
                                    : Colors.white,FontWeight.normal, 12.sp),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showtoast("Coming soon");
                            // setState(() {
                            //   Mint_selected = false;
                            //   Enhance_selected = true;
                            //   GemUpgrade_selected = false;
                            // });
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
                                    const BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Enhance",
                                style: Font.lato(Enhance_selected != true
                                    ? Colors.grey
                                    : Colors.white, FontWeight.normal, 12.sp),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showtoast("Coming soon");
                            // setState(() {
                            //   Mint_selected = false;
                            //   Enhance_selected = false;
                            //   GemUpgrade_selected = true;
                            // });
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
                                    const BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Gem Upgrade",
                                style: Font.lato(GemUpgrade_selected != true
                                    ? Colors.grey
                                    : Colors.white, FontWeight.normal, 12.sp),
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
            Mint_selected == true ? Mint_View() : Container(),
            Enhance_selected == true ? Enhance_View() : Container(),
            GemUpgrade_selected == true ? Container() : Container()
          ],
        ),
      ),
    );
  }
}
