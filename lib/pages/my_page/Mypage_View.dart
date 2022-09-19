import 'package:bengal_app/pages/my_page/widget/Mypage_Account_Widget.dart';
import 'package:bengal_app/pages/my_page/widget/Mypage_info_Widget.dart';
import 'package:flutter/material.dart';
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
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        toolbarHeight: size.height * 0.082,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "PROFILEE",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: size.width * 0.15,
              ),

              // Image.asset(
              //   "assets/Wallet/icons/setting_button.png",
              //   width: size.width * 0.09,
              // )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 20.0, bottom: 10),
              child: Text(
                "ACCOUNT",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            //Account Card
            Mypage_Account_Widget(size,context),
            //

            Mypage_info_Widget(size),

            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "NOTICATION",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.9,
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.notifications_none,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "App Notification",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          width: size.width * 0.4,
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
                    width: size.width * 0.9,
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.email_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Email Notification",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          width: size.width * 0.377,
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
            SizedBox(height: size.height*0.08,),
            Center(child: Button_Widget(size,"CONFIRM"))

          ],
        ),
      ),
    );
  }
}
