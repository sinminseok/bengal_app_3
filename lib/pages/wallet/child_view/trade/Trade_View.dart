import 'dart:math';

import 'package:bengal_app/pages/wallet/popup/trade_popup.dart';
import 'package:bengal_app/utils/button_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../controller/storage_controller.dart';
import '../../../../controller/assets_controller.dart';
import '../../../../types/common.dart';
import '../../../../types/constants.dart';
import '../../../../utils/font.dart';
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

  CoinType fromCoin = CoinType.Usdc;
  CoinType toCoin = CoinType.Per;
  bool isChangeCallAtFrom = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    void changedCoin(CoinType type) {
      setState(() {
        if (isChangeCallAtFrom) {
          if (fromCoin != type) {
            _priceController.text = "";
            fromCoin = type;
          }
        } else {
          if (toCoin != type) {
            toCoin = type;
          }
        }
      });
    }

    return Scaffold(
      backgroundColor: kAppbarColor,
      endDrawer: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Trade_Drawer(
              exceptCoin: isChangeCallAtFrom ? toCoin : fromCoin,
              coinSelected: changedCoin)),
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
              margin: EdgeInsets.fromLTRB(110.w, 3.h, 45.w, 0.h),
              child: Text("Trade",
                  style: Font.lato(Colors.black, FontWeight.bold, 18.sp),
              ),
            ),
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
            Container(
                margin: EdgeInsets.fromLTRB(15.w, 30.h, 300.w, 0.h),
                child: Text(
                  "From",
                  style: Font.lato(Colors.grey.shade600, FontWeight.bold, 18.sp),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
              width: 360.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),
                          child: Image.asset(
                            AssetsController().getCoinIcon(fromCoin),
                            width: 30.w,
                            height: 30.h,
                          ),
                        ),
                        Text(
                          AssetsController().getCoinUpperCaseName(fromCoin),
                          style: Font.lato(Colors.blue, FontWeight.bold, 16.sp),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1.w, 0.h, 15.w, 0.h),
                    child: Builder(
                      builder: (context) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              isChangeCallAtFrom = true;
                            });
                            Scaffold.of(context).openEndDrawer();
                          },
                          child: Text(
                            "Change >",
                            style: Font.lato(kPrimaryColor, FontWeight.w400, 12.sp),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 18.h, 15.w, 8.h),
              width: 360.w,
              height: 60.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                    width: size.width * 0.7,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _priceController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusColor: kPrimaryColor,
                          hoverColor: kPrimaryColor,
                          fillColor: kPrimaryColor,
                          labelStyle: Font.lato(kPrimaryColor, FontWeight.w400, 12.sp),
                          hintStyle: Font.lato(Colors.grey.shade500, FontWeight.w400, 12.sp),
                          contentPadding: const EdgeInsets.only(
                              left: 5, bottom: 5, top: 5, right: 5),
                          hintText: 'Please enter the selling price'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _priceController.text = StorageController().onChainWallet!.balanceString(fromCoin);
                      });
                    },
                    child: Text(
                      "All",
                      style: Font.lato(kPrimaryColor, FontWeight.w400, 12.sp),
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Available : value ${AssetsController().getCoinUpperCaseName(fromCoin)}",
              style: Font.lato(kPrimaryColor, FontWeight.w400, 14.sp),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0.w, 23.h, 0.w, 0.h),
                child: const Icon(Icons.keyboard_arrow_down_sharp,color: kPrimaryColor,)),
            Container(
                margin: EdgeInsets.fromLTRB(15.w, 0.h, 320.w, 0.h),
                child: Text(
                  "To",
                  style: Font.lato(Colors.grey.shade600, FontWeight.bold, 18.sp),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
              width: 360.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),
                    child: Row(
                      children: [
                        Image.asset(
                          AssetsController().getCoinIcon(toCoin),
                          width: 30.w,
                          height: 30.h,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
                          child: Text(
                            AssetsController().getCoinUpperCaseName(toCoin),
                            style: Font.lato(kPerColor, FontWeight.bold, 16.sp),
                          ),
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
                            setState(() {
                              isChangeCallAtFrom = false;
                            });
                            Scaffold.of(context).openEndDrawer();
                          },
                          child: Text(
                            "Change >",
                            style: Font.lato(kPrimaryColor, FontWeight.w400, 12.sp),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 20.h),
              width: 360.w,
              height: 60.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),
                      width: size.width * 0.7,
                      child: const Text("-")),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),
              width: 360.w,
              height: 40.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),
                      child: Text(
                        value ?? "Silppage Tolerance",
                        style: Font.lato(Colors.grey.shade500, FontWeight.bold, 14.sp),
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                            child: Text(
                              "%",
                              style: Font.lato(Colors.grey.shade600, FontWeight.bold, 14.sp),
                            )),
                        InkWell(
                          onTap: () {
                            setState(() async {
                              value = await Traded_popup().openDialog(context);
                            });
                          },
                          child: Text(
                            "Change >",
                            style: Font.lato(kPrimaryColor, FontWeight.w400, 12.sp),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Button_Frame("TRADE"),

          ],
        ),
      ),
    );
  }
}
