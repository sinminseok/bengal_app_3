import 'package:bengal_app/pages/my_page/widget/Mypage_Account_Widget.dart';
import 'package:bengal_app/pages/my_page/widget/Mypage_info_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../types/constants.dart';
import '../lobby/widget/Button_Widget.dart';

class MyPage_View extends StatefulWidget {
  const MyPage_View({Key? key}) : super(key: key);

  @override
  _MyPage_ViewState createState() => _MyPage_ViewState();
}

class _MyPage_ViewState extends State<MyPage_View> {
  bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      backgroundColor: kAppbarColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,

        toolbarHeight: 100.h,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(4.w, 1.h, 1.w, 20.h),

                    child: Image.asset("assets/images/common/back_button.png",width: 50.h,height: 50.h,)),
              ),


              Container(
                margin: EdgeInsets.fromLTRB(95.w, 1.h, 15.w, 20.h),

                child: Text(
                  "PROFILEE",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),


              // Image.asset(
              //   "assets/Wallet/icons/setting_button.png",
              //   width: size.width * 0.09,
              // )
            ],
          ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20.w, 10.h, 15.w, 20.h),

              child: Text(
                "ACCOUNT",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            //Account Card
            Mypage_Account_Widget(size,context),
            //

            Mypage_info_Widget(size),


            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 15.h),
              child: Text(
                "NOTICATION",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Center(
              child: Column(
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
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10.w, 10.h, 15.w, 0.h),

                          child: Icon(
                            Icons.notifications_none,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(1.w, 4.h, 150.w, 0.h),

                          child: Text(
                            "App Notification",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ),

                        Switch(
                          activeColor: kPrimaryColor,
                          value: ischeck,
                          onChanged: (bool value) {
                            setState(() {
                              ischeck = value;
                            });
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
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
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10.w, 10.h, 15.w, 0.h),

                          child: Icon(
                            Icons.email_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(1.w, 4.h, 140.w, 0.h),

                          child: Text(
                            "Email Notification",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ),

                        Switch(
                          activeColor: kPrimaryColor,
                          value: ischeck,
                          onChanged: (bool value) {
                            setState(() {
                              ischeck = value;
                            });
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15.w, 100.h, 15.w, 0.h),

                child: Center(child: Button_Widget(size,"CONFIRM")))

          ],
        ),

    );
  }
}
