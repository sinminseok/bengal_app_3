import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/constants.dart';

Widget Drawer_Coin_Widet(Size size,int xper_value,int per_value,int hvh_value){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: 290.w,
            height: 46.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset(
                    "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
                Text(
                  "XPER",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  width: size.width * 0.3,
                ),
                Text(
                  "$xper_value",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: 290.w,
            height: 46.h,
            decoration: BoxDecoration(
                border: Border.all(color: kPerColor),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset(
                    "assets/images/lobby/icons/appbar_icons/per_icon.png",
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
                Text(
                  "PER",
                  style: TextStyle(
                      color: kPerColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  width: size.width * 0.3,
                ),
                Text(
                  "$per_value",
                  style: TextStyle(
                      color: kPerColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: 290.w,
            height: 46.h,
            decoration: BoxDecoration(
                border: Border.all(color: kCharColor),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset(
                    "assets/images/lobby/icons/appbar_icons/havah_icon.png",
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
                Text(
                  "HVH",
                  style: TextStyle(
                      color: kCharColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  width: size.width * 0.3,
                ),
                Text(
                  "$hvh_value",
                  style: TextStyle(
                      color: kCharColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}


class Token_Bar extends StatefulWidget {
  const Token_Bar({Key? key}) : super(key: key);

  @override
  _Token_BarState createState() => _Token_BarState();
}

class _Token_BarState extends State<Token_Bar> {
  bool xper_ontap = false;
  bool per_ontap = false;
  bool hvh_ontap = false;
  bool usdc_ontap = false;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            setState(() {
               xper_ontap = true;
               per_ontap = false;
               hvh_ontap = false;
               usdc_ontap = false;
            });

          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Container(
                width: 290.w,
                height: 46.h,
                decoration: BoxDecoration(
                    border: Border.all(color: xper_ontap!=true?Colors.grey.shade300:Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                      child: Row(
                        children: [
                          xper_ontap!=true?Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/lobby/icons/appbar_icons/xper_icon.png'),
                                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.modulate,)
                                )
                            ),
                          ):Image.asset(
                            "assets/images/lobby/icons/appbar_icons/xper_icon.png",

                            width: 20.w,
                            height: 20.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "XPER",
                              style: TextStyle(
                                  color: xper_ontap!=true?Colors.grey.shade300:Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),



                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                      child: Text(
                        "1",
                        style: TextStyle(
                            color: xper_ontap!=true?Colors.grey.shade300:Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){
            setState(() {
              xper_ontap = false;
              per_ontap = true;
              hvh_ontap = false;
              usdc_ontap = false;
            });

          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Container(
                width: 290.w,
                height: 46.h,
                decoration: BoxDecoration(
                    border: Border.all(color: per_ontap!=true?Colors.grey.shade300:kPerColor),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                      child: Row(
                        children: [
                          per_ontap!=true?Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/lobby/icons/appbar_icons/per_icon.png'),
                                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.modulate,)
                                )
                            ),
                          ):
                          Image.asset(
                            "assets/images/lobby/icons/appbar_icons/per_icon.png",
                            width: 20.w,
                            height: 20.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "PER",
                              style: TextStyle(
                                  color:per_ontap!=true?Colors.grey.shade300: kPerColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),



                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                      child: Text(
                        "1",
                        style: TextStyle(
                            color:per_ontap!=true?Colors.grey.shade300: kPerColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){
            setState(() {
              xper_ontap = false;
              per_ontap = false;
              hvh_ontap = true;
              usdc_ontap = false;
            });

          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Container(
                width: 290.w,
                height: 46.h,
                decoration: BoxDecoration(
                    border: Border.all(color:hvh_ontap!=true?Colors.grey.shade300: kCharColor),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                      child: Row(
                        children: [
                          hvh_ontap!=true?Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/lobby/icons/appbar_icons/havah_icon.png'),
                                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.modulate,)
                                )
                            ),
                          ):Image.asset(
                            "assets/images/lobby/icons/appbar_icons/havah_icon.png",
                            width: 20.w,
                            height: 20.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "HVH",
                              style: TextStyle(
                                  color: hvh_ontap!=true?Colors.grey.shade300:kCharColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),



                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                      child: Text(
                        "1",
                        style: TextStyle(
                            color:hvh_ontap!=true?Colors.grey.shade300:kCharColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){
            setState(() {
              xper_ontap = false;
              per_ontap = false;
              hvh_ontap = false;
              usdc_ontap = true;
            });

          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Container(
                width: 290.w,
                height: 46.h,
                decoration: BoxDecoration(
                    border: Border.all(color: usdc_ontap!=true?Colors.grey.shade300:Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                      child: Row(
                        children: [
                          usdc_ontap!=true?Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/wallet/icons/usdc_icon.png'),
                                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.modulate,)
                                )
                            ),
                          ):Image.asset(
                            "assets/images/wallet/icons/usdc_icon.png",
                            width: 20.w,
                            height: 20.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "USDC",
                              style: TextStyle(
                                  color: usdc_ontap!=true?Colors.grey.shade300:Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),



                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                      child: Text(
                        "1",
                        style: TextStyle(
                            color: usdc_ontap!=true?Colors.grey.shade300:Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
