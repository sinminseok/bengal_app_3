import 'package:bengal_app/pages/my_page/widget/Mypage_Account_Widget.dart';
import 'package:bengal_app/pages/my_page/widget/Mypage_info_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/constants.dart';
import '../../lobby/widget/Button_Widget.dart';
import '../widget/Input_Widget.dart';

class MyPage_Edit_View extends StatefulWidget {
  const MyPage_Edit_View({Key? key}) : super(key: key);

  @override
  _MyPage_Edit_View createState() => _MyPage_Edit_View();
}

class _MyPage_Edit_View extends State<MyPage_Edit_View> {
  bool ischeck = false;
  TextEditingController _username_controller = TextEditingController();

  TextEditingController _emial_controller = TextEditingController();
  TextEditingController _email_confirm_controller = TextEditingController();

  TextEditingController _pw_controller = TextEditingController();
  TextEditingController _repeat_pw_controller = TextEditingController();

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
        title: Row(

          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                  width: 40.h,height: 40.h,
                  child: Image.asset("assets/images/common/back_button.png",)),
            ),


            Container(
              margin: EdgeInsets.fromLTRB(70.w, 0.h, 0.w, 0.h),

              child: Text(
                "Edit Account",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18),
              ),
            ),



          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 10.h),
                child: Text(
                  "USER NAME",
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
                )),

            Input_Widget(hint_text: "Guest", controller: _username_controller, keyboad_type: TextInputType.text, hide_input: false, sendcode: false)
            ,Container(
                margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 10.h),
                child: Text(
                  "EMAIL",
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
                )),
            Input_Widget(hint_text: "Email@email.com", controller: _emial_controller, keyboad_type: TextInputType.text, hide_input: false, sendcode: true),
            Input_Widget(hint_text: "Enter Code", controller: _email_confirm_controller, keyboad_type: TextInputType.text, hide_input: false, sendcode: false),
            Container(
                margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 5.h),
                child: Text(
                  "Password",
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 17),
                )),
            Input_Widget(hint_text: "Enter Password", controller: _pw_controller, keyboad_type: TextInputType.text, hide_input: true, sendcode: false),
            Input_Widget(hint_text: "Repeat Password", controller: _repeat_pw_controller, keyboad_type: TextInputType.text, hide_input: true, sendcode: false),
            Container(
                margin: EdgeInsets.fromLTRB(15.w, 100.h, 15.w, 0.h),
                child: Center(child: Button_Widget(size, "CONFIRM")))
          ],
        ),
      ),
    );
  }
}
