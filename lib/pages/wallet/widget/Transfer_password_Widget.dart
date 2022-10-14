import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';

import '../../../common/string_configuration.dart';
import '../../../controller/config_controller.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';
import '../child_view/transfer/Transfer_View.dart';

class Wallet_Transfer_password_Widget extends StatefulWidget {
  const Wallet_Transfer_password_Widget({Key? key}) : super(key: key);

  @override
  _Wallet_Transfer_password_WidgetState createState() =>
      _Wallet_Transfer_password_WidgetState();
}

class _Wallet_Transfer_password_WidgetState
    extends State<Wallet_Transfer_password_Widget> {
  TextEditingController _password = TextEditingController();

  List<int> passwor_list = [];

  @override
  Widget build(BuildContext context) {
    bool circle_1 =
        _password.text.length.toInt() > 0 && _password.text.length.toInt() < 7
            ? true
            : false;
    bool circle_2 =
        _password.text.length.toInt() > 1 && _password.text.length.toInt() < 7
            ? true
            : false;
    bool circle_3 =
        _password.text.length.toInt() > 2 && _password.text.length.toInt() < 7
            ? true
            : false;
    bool circle_4 =
        _password.text.length.toInt() > 3 && _password.text.length.toInt() < 7
            ? true
            : false;
    bool circle_5 =
        _password.text.length.toInt() > 4 && _password.text.length.toInt() < 7
            ? true
            : false;
    bool circle_6 =
        _password.text.length.toInt() > 5 && _password.text.length.toInt() < 7
            ? true
            : false;

    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0.w, 31.h, 0.w, 0.h),

          width: 170.w,
          height: 25.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              circle_1 == true
                  ? Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
              )
                  : Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: kPrimaryColor,
                    shape: BoxShape.circle),
              ),
              circle_2 == true
                  ? Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
              )
                  : Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: kPrimaryColor,
                    shape: BoxShape.circle),
              ),
              circle_3 == true
                  ? Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
              )
                  : Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: kPrimaryColor,
                    shape: BoxShape.circle),
              ),
              circle_4 == true
                  ? Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
              )
                  : Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: kPrimaryColor,
                    shape: BoxShape.circle),
              ),
              circle_5 == true
                  ? Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
              )
                  : Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: kPrimaryColor,
                    shape: BoxShape.circle),
              ),
              circle_6 == true
                  ? Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
              )
                  : Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: kPrimaryColor,
                    shape: BoxShape.circle),
              ),
            ],
          ),
        ),



        Container(
          margin: EdgeInsets.fromLTRB(0.w, 43.h, 0.w, 0.h),

          width: 260.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: Container(
                  width: 65.w,
                  height: 65.h,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: InkWell(
                      onTap: () {
                        if (_password.text.length.toInt() < 6) {
                          setState(() {
                            _password.text = _password.text + "1";
                          });
                        }
                      },
                      child: Center(
                          child: Text(
                        "1",
                        style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                      ))),
                ),
              ),
              InkWell(
                child: Container(
                  width: 65.w,
                  height: 65.h,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: InkWell(
                      onTap: () {
                        if (_password.text.length.toInt() < 6) {
                          setState(() {
                            _password.text = _password.text + "2";
                          });
                        }
                      },
                      child: Center(
                          child: Text(
                        "2",
                        style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                      ))),
                ),
              ),
              InkWell(
                child: Container(
                  width: 65.w,
                  height: 65.h,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: InkWell(
                      onTap: () {
                        if (_password.text.length.toInt() < 6) {
                          setState(() {
                            _password.text = _password.text + "3";
                          });
                        }
                      },
                      child: Center(
                          child: Text(
                        "3",
                        style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                      ))),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 260.w,
          margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 65.w,
                height: 65.h,
                decoration:
                    const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "4";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                    "4",
                    style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                  )),
                ),
              ),
              Container(
                width: 65.w,
                height: 65.h,
                decoration:
                    const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "5";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                    "5",
                    style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                  )),
                ),
              ),
              Container(
                width: 65.w,
                height: 65.h,
                decoration:
                    const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "6";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                    "6",
                    style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                  )),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 260.w,
          margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 65.w,
                height: 65.h,
                decoration:
                    const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "7";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                    "7",
                    style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                  )),
                ),
              ),
              Container(
                width: 65.w,
                height: 65.h,
                decoration:
                    const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "8";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                    "8",
                    style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                  )),
                ),
              ),
              Container(
                width: 65.w,
                height: 65.h,
                decoration:
                    const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "9";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                    "9",
                    style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                  )),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 260.w,
          margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 65.w,
                height: 65.h,
                decoration:
                    const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
                child: Center(
                    child: Text(
                  "0",
                  style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                )),
              ),
              InkWell(
                onTap: () {
                  if (_password.text.length.toInt() < 6) {
                    setState(() {
                      _password.text = _password.text + "0";
                    });
                  }
                },
                child: Container(
                  width: 65.w,
                  height: 65.h,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                      child: Text(
                    "0",
                    style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                  )),
                ),
              ),
              Container(
                width: 65.w,
                height: 65.h,
                decoration:
                    const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    // print(_password.text.length.toInt());

                    setState(() {
                      if (_password.text.length.toInt() > 0) {
                        _password.text = _password.text
                            .toString()
                            .substring(0, _password.text.length.toInt() - 1);
                      } else {
                        return;
                      }
                    });
                  },
                  child: const Center(
                    child: Icon(
                      Icons.backspace_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.fromLTRB(0.w, 50.h, 0.w, 0.h),
          child: Text(
            "FORGOT PASSWORD",
            style: TextStyle(color: Colors.white, fontSize: 12.sp,fontWeight: FontWeight.w400),
          ),
        ),
     
      ],
    );
  }
}
