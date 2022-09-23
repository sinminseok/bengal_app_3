import 'package:bengal_app/pages/wallet/popup/Trade_popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';
import '../../drawer/trade_drawer.dart';
import '../../popup/trade_change_popup.dart';

class Trade_View extends StatefulWidget {
  const Trade_View({Key? key}) : super(key: key);

  @override
  _Trade_ViewState createState() => _Trade_ViewState();
}

class _Trade_ViewState extends State<Trade_View> {
  bool change = false;
  bool cars_ontap = false;
  bool boxs_ontap = false;
  TextEditingController _priceController = TextEditingController();
  var value;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kAppbarColor,
      endDrawer: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Trade_Drawer()),
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
              child: Text("Trade",
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
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 300.w, 0.h),
                child: Text(
                  "From",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
              width: 360.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/wallet/icons/usdc_icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                          "USDC",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1.w, 3.h, 15.w, 0.h),
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
                      controller: _priceController,
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
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 300.w, 0.h),
                child: Text(
                  "To",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
              width: 360.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/per_icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                          "PER",
                          style: TextStyle(
                              color: kPerColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1.w, 3.h, 15.w, 0.h),
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
                      child: Text("-")),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 18.h, 15.w, 20.h),
              width: 360.w,
              height: 40.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                      child: Text(
                        value==null?"Silppage Tolerance":value,
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 15),
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                            child: Text(
                              "%",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold),
                            )),

                        InkWell(
                          onTap: () async {
                            // var val = await showDialog<double>(  //<--------|
                            //   context: context,
                            //   builder: (context) =>  Trade_popup().change_popup(context)(),
                            // );
                            value =  await Traded_popup().openDialog(context);

                          },
                          child: Text(
                            "Change >",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> openDialog() => showAnimatedDialog<String>(
      context: context,
      builder: (context) => StatefulBuilder(
            builder: (context, setState) {
              return AlertDialog(
                contentPadding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                content: DefaultTextStyle(
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                            bottom: 478.h,
                            left: 265.w,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset(
                                  "assets/images/common/cancel_button.png",
                                  width: 40.w,
                                ))),
                        Container(
                            width: 300.w,
                            height: 300.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 300.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      color: kPrimaryColor),
                                  child: Center(
                                      child: Text(
                                        "SLIPPAGE TOLERANCE",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      )),
                                ),

                                Container(
                                    margin: EdgeInsets.fromLTRB(10.w, 30.h, 160.w, 0.h),
                                    child: Text("Trade information",style: TextStyle(color: Colors.grey.shade600,fontSize: 12,fontWeight: FontWeight.bold),)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        print("DDD");
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 5.w, 0.h),

                                        width: 80.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300),
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: Center(
                                          child: Text("0.1%",style: TextStyle(color: Colors.grey.shade500,fontSize: 12)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),

                                      width: 80.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey.shade300),
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: Center(
                                        child: Text("0.5%",style: TextStyle(color: Colors.grey.shade500,fontSize: 12)),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(5.w, 10.h, 15.w, 0.h),

                                      width: 80.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey.shade300),
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: Center(
                                        child: Text("1.0%",style: TextStyle(color: Colors.grey.shade500,fontSize: 12)),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
                                  width: 260.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.shade200),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(10))),


                                  child: TextField(
                                    autofocus: true,

                                    keyboardType: TextInputType.number,
                                    controller: _priceController,

                                    decoration: new InputDecoration(

                                        border: InputBorder.none,
                                        suffixText: "%",

                                        focusColor: kPrimaryColor,
                                        hoverColor: kPrimaryColor,
                                        fillColor: kPrimaryColor,
                                        labelStyle: TextStyle(color: kPrimaryColor),
                                        hintStyle: TextStyle(
                                            fontSize: 12, color: Colors.grey.shade500),
                                        contentPadding: EdgeInsets.only(
                                            left: 15, bottom: 18, top: 0, right: 5),
                                        hintText: '0'),
                                  ),
                                ),


                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context,_priceController.text);
                                  },
                                  child: Container(
                                    width: 120.w,
                                    height: 34.h,
                                    margin: EdgeInsets.fromLTRB(
                                        15.w, 30.h, 15.w, 0.h),
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: Center(
                                      child: Text(
                                        "Confirm",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ],
                    )),
              );
            },
          ));
}
