import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';
import '../../drawer/transfer_drawer.dart';
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
      endDrawer: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Transfer_Drawer()
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
              margin: EdgeInsets.fromLTRB(107.w, 3.h, 45.w, 0.h),
              child: Text("Transfer",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18)),
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
             
              //From to Widget
              Container(
                margin: EdgeInsets.fromLTRB(30.w, 23.h, 0.w, 0.h),

                child: Row(
                  children: [

                    Container(
                      width: 360.w,
                      child: Stack(
                        children: [
                          Container(

                            width: 160.w,
                            height: 100.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10.w, 10.h, 15.w, 0.h),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "From",
                                    style: TextStyle(
                                        color: kPrimaryColor, fontSize: 12),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 3.0, top: 9),
                                        child: Image.asset(
                                          "assets/images/wallet/icons/${change != true ? "wallet_card.png" : "spending_card.png"}",
                                          width: size.width * 0.1,
                                        ),
                                      ),
                                      Text(
                                        "${change != true ? "Speding" : "Wallet"}",
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 16),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 172.w,
                            child: Container(
                              width: 160.w,
                              height: 100.h,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade300),
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(10.w, 10.h, 15.w, 0.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "To",
                                      style: TextStyle(
                                          color: kPrimaryColor, fontSize: 12),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 3.0, top: 9),
                                          child: Image.asset(
                                            "assets/images/wallet/icons/${change == true ? "wallet_card.png" : "spending_card.png"}",
                                            width: size.width * 0.1,
                                          ),
                                        ),
                                        Text(
                                          "${change == true ? "Spending" : "Wallet"}",
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 16),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              left: size.width * 0.37,
                              top: 26.h,
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      change = !change;
                                    });
                                  },
                                  child: Image.asset(
                                    "assets/images/wallet/icons/btn_change.png",
                                    width: size.width * 0.1,
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
                    margin: EdgeInsets.fromLTRB(30.w, 10.h, 15.w, 0.h),
                    child: Text(
                      "Token",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                width: 360.w,
                height: 80.h,
                margin: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 0.h),

                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Image.asset(
                      "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                      width: 20.w,

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "XPER",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey.shade700),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(190.w, 3.h, 15.w, 0.h),

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
                    margin: EdgeInsets.fromLTRB(30.w, 23.h, 15.w, 0.h),

                    child: Text(
                      "Amount",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 18.h, 15.w, 20.h),

                width: 360.w,
                height: 60.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [

                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

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
                    Text(
                      "All",
                      style: TextStyle(color: kPrimaryColor, fontSize: 13),
                    )
                  ],
                ),
              ),
              Text(
                "Available : value XPER",
                style: TextStyle(color: kPrimaryColor),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(15.w, 180.h, 15.w, 0.h),

                child: Image.asset(
                  "assets/images/wallet/icons/transfer_button.png",
                  width: 175.w,
                  height:50.h
                ),
              )
            ],
          ),
      ),

    );
  }
}