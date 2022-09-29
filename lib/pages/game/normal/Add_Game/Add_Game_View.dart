

import 'dart:ui';

import 'package:bengal_app/pages/my_page/widget/Mypage_Account_Widget.dart';
import 'package:bengal_app/pages/my_page/widget/Mypage_info_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';
import '../../../lobby/widget/Button_Widget.dart';
import 'Status_Widget.dart';

class Add_Game_View extends StatefulWidget {
   Add_Game_View({Key? key}) : super(key: key);

  @override
  _Add_Game_View createState() => _Add_Game_View();
}

class _Add_Game_View extends State<Add_Game_View> {
  TextEditingController _searchController = TextEditingController();


  bool All_selected = true;
  bool Add_selected = false;
  bool Already_selected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,

        toolbarHeight: 50.h,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Stack(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,

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


            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0.w, 9.h, 0.w, 0.h),

                child: Text(
                  "ADD YOUR GAME",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18),
                ),
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
              width: 390.w,
              height: 125.h,
              decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: Colors.grey.shade300,),top: BorderSide(color: Colors.grey.shade300,) ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              All_selected = true;
                              Add_selected = false;
                              Already_selected = false;
                            });
                          },
                          child: Container(
                            width: 116.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.grey.shade300),
                                color: All_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "ALL",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: All_selected != true
                                        ? Colors.grey
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              All_selected = false;
                              Add_selected = true;
                              Already_selected = false;
                            });
                          },
                          child: Container(
                            width: 116.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.grey.shade300),
                                color: Add_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "ADD",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Add_selected != true
                                        ? Colors.grey
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              All_selected = false;
                              Add_selected = false;
                              Already_selected = true;
                            });
                          },
                          child: Container(
                            width: 116.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.grey.shade300),
                                color: Already_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "ALREADY",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Already_selected != true
                                        ? Colors.grey
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
                    width: 360.w,
                    height: 37.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: IconTheme(
                              data: IconThemeData(color: Colors.grey),
                              child: Icon(
                                Icons.search,
                              )),
                          contentPadding: EdgeInsets.all(14.0),
                          hintText: 'Please enter game name.',
                          hintStyle: TextStyle(fontSize: 13)),
                      style: TextStyle(color: Colors.black),
                      controller: _searchController,
                    ),
                  )

                ],
              ),
            ),

            All_selected?Center(
              child: Container(
                width: 360.w,
                height: 600.h,
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, int idx) {
                      //인자가 ADD면 ADD위젯,아니면 ALREAY 위젯 보여짐
                      return Status_Widget("ADD");
                    }
                ),
              ),
            ):Container(),
            Add_selected?Center(
              child: Container(
                width: 360.w,
                height: 600.h,
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, int idx) {
                      //인자가 ADD면 ADD위젯,아니면 ALREAY 위젯 보여짐
                      return Status_Widget("ADD");
                    }
                ),
              ),
            ):Container(),
            Already_selected?Center(
              child: Container(
                width: 360.w,
                height: 600.h,
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, int idx) {
                      //인자가 ADD면 ADD위젯,아니면 ALREAY 위젯 보여짐
                      return Status_Widget("ALREADY");
                    }
                ),
              ),
            ):Container()





          ],
        ),
      ),

    );
  }
}
