import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../controller/storage_controller.dart';
import '../../../../controller/assets_controller.dart';
import '../../../../types/common.dart';
import '../../../../types/constants.dart';
import '../../../../utils/font.dart';
import '../../drawer/transfer_drawer.dart';
import '../../popup/transfer_popup.dart';

class Transfer_View extends StatefulWidget {
  const Transfer_View({Key? key}) : super(key: key);

  @override
  _Transfer_ViewState createState() => _Transfer_ViewState();
}

class _Transfer_ViewState extends State<Transfer_View> {
  bool fromLocalWallet = true;
  CoinType selectedCoin = CoinType.XPer;
  bool carsOnTap = false;
  bool boxsOnTap = false;
  final TextEditingController _amountController = TextEditingController();


  void changedCoin(CoinType type) {
    setState(() {
      selectedCoin = type;
      _amountController.text = "";
    });
  }

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
          SizedBox(
              width: 330.w,
              child: Transfer_Drawer(
                  fromLocalWallet: fromLocalWallet,
                  coinSelected: changedCoin)
          ),
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
                  style: Font.lato(Colors.black, FontWeight.bold, 18.sp)),
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
                  SizedBox(
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
                                  const BorderRadius.all(Radius.circular(10))),
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
                                      SizedBox(
                                        width: 24.w,
                                        height: 24.h,
                                        child: Image.asset(
                                          "assets/images/wallet/icons/${fromLocalWallet ? "spending_card.png" : "wallet_card.png"}",
                                        ),
                                      ),
                                      Container(
                                        margin:
                                        EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                                        child: Text(
                                          fromLocalWallet ? "Spending" : "Wallet",
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
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
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
                                          "assets/images/wallet/icons/${fromLocalWallet ? "wallet_card.png" : "spending_card.png"}",
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
                                        child: Text(
                                          fromLocalWallet ? "Wallet" : "Spending",
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
                                    fromLocalWallet = !fromLocalWallet;
                                  });
                                },
                                child: SizedBox(
                                  width: 30.w,
                                  height: 30.h,
                                  child: Image.asset("assets/images/wallet/icons/btn_change.png"),
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
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
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
                            AssetsController().getCoinIcon(selectedCoin)
                        ),
                      ),
                      Text(
                        AssetsController().getCoinUpperCaseName(selectedCoin),
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
                            //Token Select ***
                            Scaffold.of(context).openEndDrawer();
                          },
                          child: Text(
                            "Change >",
                            style: Font.lato(kPrimaryColor, FontWeight.w400, 13.sp),
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
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                    width: 250.w,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _amountController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusColor: kPrimaryColor,
                          hoverColor: kPrimaryColor,
                          fillColor: kPrimaryColor,
                          labelStyle: const TextStyle(color: kPrimaryColor),
                          hintStyle: Font.lato(Colors.grey.shade500, FontWeight.w400, 12.sp),
                          contentPadding: const EdgeInsets.only(
                              left: 5, bottom: 5, top: 5, right: 5),
                          hintText: 'Please enter the selling price'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _amountController.text = fromLocalWallet ?
                          StorageController().wallet!.balanceString(selectedCoin) :
                          StorageController().onChainWallet!.balanceString(selectedCoin);
                        });
                      },
                      child: Text("All",
                        style: Font.lato(kPrimaryColor, FontWeight.w400, 13.sp),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Available : value ${AssetsController().getCoinUpperCaseName(selectedCoin)}",
              style: TextStyle(color: kPrimaryColor,fontSize: 14.sp),
            ),

            InkWell(
              onTap: () {
                Transfer_popup().transfer_popup(
                    context,
                    fromLocalWallet,
                    selectedCoin,
                    _amountController.text);
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
