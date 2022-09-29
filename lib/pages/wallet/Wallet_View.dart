import 'package:bengal_app/pages/wallet/popup/address_popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Controller/storage_controller.dart';
import '../../types/constants.dart';
import 'child_view/spending/Spending_View.dart';
import 'child_view/wallet/Wallet_Account_View.dart';

class Wallet_View extends StatefulWidget {
  const Wallet_View({Key? key}) : super(key: key);

  @override
  _Wallet_ViewState createState() => _Wallet_ViewState();
}

class _Wallet_ViewState extends State<Wallet_View> {
  bool spending_selected = true;
  bool wallet_selected = false;

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              child: Text("Token Management",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Image.asset(
              "assets/images/wallet/icons/setting_button.png",
              width: 40.w,
              height: 40.h,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),
              width: 390.w,
              height: 1.h,
              color: Colors.grey.shade300,
            ),
            //selected buttons
            Container(
              margin: EdgeInsets.only(top: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        spending_selected = true;
                        wallet_selected = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                      width: 177.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          color: spending_selected != true
                              ? Colors.white
                              : kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          "Spending",
                          style: TextStyle(
                              color: spending_selected != true
                                  ? Colors.grey
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        spending_selected = false;
                        wallet_selected = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(6.w, 0.h, 15.w, 0.h),
                      width: 177.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          color: wallet_selected != true
                              ? Colors.white
                              : kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          "Wallet",
                          style: TextStyle(
                              color: wallet_selected != true
                                  ? Colors.grey
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            spending_selected != true
                ? Container()
                : Container(
                    margin: EdgeInsets.fromLTRB(0.w, 30.h, 0.w, 0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(108.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "Spending Account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                                fontSize: 18),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Wallet_popup()
                                .show_spending_question(size, context);
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.w, 0.h, 17.w, 0.h),
                            child: Image.asset(
                              "assets/images/wallet/icons/question_icon.png",
                              width: 19,
                              height: 19,
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
            wallet_selected != true
                ? Container()
                : Container(
                    margin: EdgeInsets.fromLTRB(0.w, 30.h, 0.w, 0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(134.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "Wallet Account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                                fontSize: 18),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Wallet_popup().show_wallet_question(size, context);
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                            child: Image.asset(
                              "assets/images/wallet/icons/question_icon.png",
                              width: 19.w,
                              height: 19.h,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
            //Coin_Container_Widget(size,xper_value,per_value,HVH_value)
            spending_selected != true
                ? Container()
                : Spending_View(size, context, StorageController().wallet!),
            wallet_selected != true
                ? Container()
                : Wallet_Account_View(context, size, "GASDASDASD",
                    StorageController().wallet!, 20.0, 10, 10)
          ],
        ),
      ),
    );
  }
}
