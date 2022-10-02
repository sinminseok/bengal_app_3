import 'package:bengal_app/pages/workshop/child_view/mint/Plus_Car_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/font.dart';

class Mint_View extends StatefulWidget {
  const Mint_View({Key? key}) : super(key: key);

  @override
  _Mint_View createState() => _Mint_View();
}

class _Mint_View extends State<Mint_View> {
  bool plus_ontap = false;

  @override
  Widget build(BuildContext context) {
    return plus_ontap == true
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
                  child: Text(
                      "Select a Car for Minting",
                  style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 16.sp),))
            ],
          );
  }
}
