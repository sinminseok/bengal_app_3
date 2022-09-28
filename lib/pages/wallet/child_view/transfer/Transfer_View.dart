import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';
import '../../../../utils/font.dart';
import '../../drawer/transfer_drawer.dart';
import '../../popup/transfer_popup.dart';
import '../../widget/Drawer_widget.dart';

class Transfer_View extends StatefulWidget {
  const Transfer_View({Key? key}) : super(key: key);

  @override
  _Transfer_ViewState createState() => _Transfer_ViewState();
}

class _Transfer_ViewState extends State<Transfer_View> {
  bool change = false;
  bool cars_ontap = false;
  bool boxs_ontap = false;
  TextEditingController _amountcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kAppbarColor,
      endDrawer: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              bottom: 700.h,
              left: -40.w,
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/images/common/cancel_button.png",
                    width: 40.w,
                  ))),
          Container(width: 330.w, child: Transfer_Drawer()),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50.h,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                "assets/images/common/back_button.png",
                width: 40.w,
                height: 40.h,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(107.w, 3.h, 0.w, 0.h),
              child: Text("Transfer",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 390.w,
              height: 1.h,
              color: Colors.grey.shade300,
            ),
            //From to Widget
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 59.h, 0.w, 0.h),
              child: Row(
                children: [
                  Container(
                    width: 390.w,
                    height: 80.h,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                          width: 175.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20.w, 10.h, 0.w, 0.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "From",
                                  style: Font.lato(kPrimaryColor, FontWeight.w700, 12.sp),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0.w, 3.h, 3.w, 0.h),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 24.w,
                                        height: 24.h,
                                        child: Image.asset(
                                          "assets/images/wallet/icons/${change != true ? "wallet_card.png" : "spending_card.png"}",
                                        ),
                                      ),
                                      Container(
                                        margin:
                                        EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                                        child: Text(
                                          "${change != true ? "Speding" : "Wallet"}",
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 20.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 200.w,
                          child: Container(
                            width: 175.w,
                            height: 80.h,
                            margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 0.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "To",
                                    style: Font.lato(kPrimaryColor, FontWeight.w700, 12.sp),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0.w, 5.h, 0.w, 0.h),
                                        width: 24.w,
                                        height: 24.h,
                                        child: Image.asset(
                                          "assets/images/wallet/icons/${change == true ? "wallet_card.png" : "spending_card.png"}",
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
                                        child: Text(
                                          "${change == true ? "Spending" : "Wallet"}",
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 180.w,
                            top: 26.h,
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    change = !change;
                                  });
                                },
                                child: Container(
                                  width: 30.w,
                                  height: 30.h,
                                  child: Image.asset(
                                    "assets/images/wallet/icons/btn_change.png",
                                  ),
                                ))),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //Token

            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 40.h, 0.w, 0.h),
                  child: Text(
                    "Token",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            Container(
              width: 360.w,
              height: 80.h,
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 10.w, 0.h),
                        width: 30.w,
                        height: 30.h,
                        child: Image.asset(
                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                        ),
                      ),
                      Text(
                        "XPER",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.w, 0.h, 20.w, 0.h),
                    child: Builder(
                      builder: (context) {
                        return InkWell(
                          onTap: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                          child: Text(
                            "Change >",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 13),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 40.h, 0.w, 0.h),
                  child: Text(
                    "Amount",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 18.h, 15.w, 20.h),
              width: 360.w,
              height: 50.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),
                    width: size.width * 0.7,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _amountcontroller,
                      decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusColor: kPrimaryColor,
                          hoverColor: kPrimaryColor,
                          fillColor: kPrimaryColor,
                          labelStyle: TextStyle(color: kPrimaryColor),
                          hintStyle: TextStyle(
                              fontSize: 12, color: Colors.grey.shade500),
                          contentPadding: EdgeInsets.only(
                              left: 5, bottom: 5, top: 5, right: 5),
                          hintText: 'Please enter the selling price'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.w, 0.h, 20.w, 0.h),
                    child: Text(
                      "All",
                      style: TextStyle(color: kPrimaryColor, fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Available : value XPER",
              style: TextStyle(color: kPrimaryColor,fontSize: 14.sp),
            ),

            InkWell(
              onTap: () {
                Transfer_popup().transfer_popup(context);
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(15.w, 175.h, 15.w, 0.h),
                child: Image.asset(
                    "assets/images/wallet/icons/transfer_button.png",
                    width: 175.w,
                    height: 50.h),
              ),
            )
          ],
        ),
      ),
    );
  }
}
