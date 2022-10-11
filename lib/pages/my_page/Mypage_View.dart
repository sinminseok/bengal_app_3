import 'package:bengal_app/controller/storage_controller.dart';
import 'package:bengal_app/pages/my_page/widget/Mypage_Account_Widget.dart';
import 'package:bengal_app/pages/my_page/widget/Mypage_info_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../types/constants.dart';
import '../../utils/button_frame.dart';
import '../lobby/widget/Button_Widget.dart';

class MyPage_View extends StatefulWidget {
  const MyPage_View({Key? key}) : super(key: key);

  @override
  _MyPage_ViewState createState() => _MyPage_ViewState();
}

class _MyPage_ViewState extends State<MyPage_View> {
  bool app_ischeck = false;
  bool email_ischeck = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kAppbarColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50.h,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Stack(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                  width: 40.h,
                  height: 40.h,
                  child: Image.asset(
                    "assets/images/common/back_button.png",
                  )),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0.w, 9.h, 0.w, 0.h),
                decoration: BoxDecoration(),
                child: Text(
                  "PROFILEE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),
            width: 390.w,
            height: 1.h,
            color: Colors.grey.shade300,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 30.h, 0.w, 10.h),
            child: Text(
              "ACCOUNT",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          //Account Card
          Mypage_Account_Widget(size, context, StorageController().account!),

          Mypage_info_Widget(size, StorageController().account!),

          Container(
            margin: EdgeInsets.fromLTRB(15.w, 40.h, 15.w, 10.h),
            child: Text(
              "NOTICATION",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
            width: 360.w,
            height: 101.h,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      width: 360.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.fromLTRB(10.w, 10.h, 15.w, 0.h),
                                child: Icon(
                                  Icons.notifications_none,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(1.w, 4.h, 0.w, 0.h),
                                child: Text(
                                  "App Notification",
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 40.67,
                            height: 20.h,
                            margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                            child: Switch(
                              activeColor: kPrimaryColor,
                              value: app_ischeck,
                              onChanged: (bool value) {
                                setState(() {
                                  app_ischeck = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 330.w,
                  height: 1.h,
                  color: Colors.grey.shade300,
                ),
                Column(
                  children: [
                    Container(
                      width: 360.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.fromLTRB(10.w, 10.h, 15.w, 0.h),
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(1.w, 4.h, 0.w, 0.h),
                                child: Text(
                                  "Email Notification",
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 40.67,
                            height: 20.h,
                            margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                            child: Switch(
                              activeColor: kPrimaryColor,
                              value: email_ischeck,
                              onChanged: (bool value) {
                                setState(() {
                                  email_ischeck = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(15.w, 20.h, 0.w, 0.h),
            child: Text(
              "Ver 1.0.0.0",
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),

          Button_Frame("confirm")
        ],
      ),
    );
  }
}
