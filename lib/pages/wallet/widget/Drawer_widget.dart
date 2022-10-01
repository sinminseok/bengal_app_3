import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../controller/assets_controller.dart';
import '../../../types/common.dart';
import '../../../types/constants.dart';
import '../../../utils/font.dart';

typedef CoinSelected = void Function(CoinType type);

Widget Drawer_Coin_Widet(BuildContext context, Size size, bool isLocalWallet,
    CoinSelected coinSelected) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: 290.w,
            height: 46.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Container(
              margin: EdgeInsets.fromLTRB(15.w, 3.h, 0.w, 0.h),
              child: InkWell(
                onTap: () {
                  coinSelected(CoinType.XPer);
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AssetsController().getCoinIcon(CoinType.XPer),
                          width: 20.w,
                          height: 20.h,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
                          child: Text(
                            AssetsController().getCoinUpperCaseName(CoinType.XPer),
                            style: Font.lato(Colors.grey, FontWeight.bold, 17.sp),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                      child: Text(
                        isLocalWallet
                            ? StorageController().wallet!.balanceString(CoinType.XPer)
                            : StorageController().onChainWallet!.balanceString(CoinType.XPer),
                        style: Font.lato(Colors.grey, FontWeight.bold, 14.sp),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: 290.w,
            height: 46.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Container(
              margin: EdgeInsets.fromLTRB(15.w, 3.h, 0.w, 0.h),
              child: InkWell(
                onTap: () {
                  coinSelected(CoinType.Per);
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AssetsController().getCoinIcon(CoinType.Per),
                          width: 20.w,
                          height: 20.h,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
                          child: Text(
                            AssetsController().getCoinUpperCaseName(CoinType.Per),
                            style: Font.lato(kPerColor, FontWeight.bold, 17.sp),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                      child: Text(
                        isLocalWallet
                            ? StorageController().wallet!.balanceString(CoinType.Per)
                            : StorageController().onChainWallet!.balanceString(CoinType.Per),
                        style: Font.lato(Colors.grey, FontWeight.bold, 14.sp),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: 290.w,
            height: 46.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Container(
              margin: EdgeInsets.fromLTRB(15.w, 3.h, 0.w, 0.h),
              child: InkWell(
                onTap: () {
                  coinSelected(CoinType.Havah);
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AssetsController().getCoinIcon(CoinType.Havah),
                          width: 20.w,
                          height: 20.h,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
                          child: Text(
                            AssetsController().getCoinUpperCaseName(CoinType.Havah),
                            style:
                                Font.lato(kCharColor, FontWeight.bold, 17.sp),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                      child: Text(
                        isLocalWallet
                            ? StorageController().wallet!.balanceString(CoinType.Havah)
                            : StorageController().onChainWallet!.balanceString(CoinType.Havah),
                        style: Font.lato(Colors.grey, FontWeight.bold, 14.sp),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

class Token_Bar extends StatefulWidget {
  const Token_Bar({Key? key}) : super(key: key);

  @override
  _Token_BarState createState() => _Token_BarState();
}

class _Token_BarState extends State<Token_Bar> {
  bool xper_ontap = false;
  bool per_ontap = false;
  bool hvh_ontap = false;
  bool usdc_ontap = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              xper_ontap = true;
              per_ontap = false;
              hvh_ontap = false;
              usdc_ontap = false;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Container(
                width: 290.w,
                height: 46.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: xper_ontap != true
                            ? Colors.grey.shade300
                            : Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                      child: Row(
                        children: [
                          xper_ontap != true
                              ? Container(
                                  width: 20.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/lobby/icons/appbar_icons/xper_icon.png'),
                                          colorFilter: ColorFilter.mode(
                                            Colors.white.withOpacity(0.5),
                                            BlendMode.modulate,
                                          ))),
                                )
                              : Image.asset(
                                  "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                  width: 20.w,
                                  height: 20.h,
                                ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "XPER",
                              style: TextStyle(
                                  color: xper_ontap != true
                                      ? Colors.grey.shade300
                                      : Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                      child: Text(
                        "1",
                        style: TextStyle(
                            color: xper_ontap != true
                                ? Colors.grey.shade300
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              xper_ontap = false;
              per_ontap = true;
              hvh_ontap = false;
              usdc_ontap = false;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Container(
                width: 290.w,
                height: 46.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: per_ontap != true
                            ? Colors.grey.shade300
                            : kPerColor),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                      child: Row(
                        children: [
                          per_ontap != true
                              ? Container(
                                  width: 20.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/lobby/icons/appbar_icons/per_icon.png'),
                                          colorFilter: ColorFilter.mode(
                                            Colors.white.withOpacity(0.5),
                                            BlendMode.modulate,
                                          ))),
                                )
                              : Image.asset(
                                  "assets/images/lobby/icons/appbar_icons/per_icon.png",
                                  width: 20.w,
                                  height: 20.h,
                                ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "PER",
                              style: TextStyle(
                                  color: per_ontap != true
                                      ? Colors.grey.shade300
                                      : kPerColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                      child: Text(
                        "1",
                        style: TextStyle(
                            color: per_ontap != true
                                ? Colors.grey.shade300
                                : kPerColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              xper_ontap = false;
              per_ontap = false;
              hvh_ontap = true;
              usdc_ontap = false;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Container(
                width: 290.w,
                height: 46.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: hvh_ontap != true
                            ? Colors.grey.shade300
                            : kCharColor),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                      child: Row(
                        children: [
                          hvh_ontap != true
                              ? Container(
                                  width: 20.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/lobby/icons/appbar_icons/havah_icon.png'),
                                          colorFilter: ColorFilter.mode(
                                            Colors.white.withOpacity(0.5),
                                            BlendMode.modulate,
                                          ))),
                                )
                              : Image.asset(
                                  "assets/images/lobby/icons/appbar_icons/havah_icon.png",
                                  width: 20.w,
                                  height: 20.h,
                                ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "HVH",
                              style: TextStyle(
                                  color: hvh_ontap != true
                                      ? Colors.grey.shade300
                                      : kCharColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                      child: Text(
                        "1",
                        style: TextStyle(
                            color: hvh_ontap != true
                                ? Colors.grey.shade300
                                : kCharColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              xper_ontap = false;
              per_ontap = false;
              hvh_ontap = false;
              usdc_ontap = true;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Center(
              child: Container(
                width: 290.w,
                height: 46.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: usdc_ontap != true
                            ? Colors.grey.shade300
                            : Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                      child: Row(
                        children: [
                          usdc_ontap != true
                              ? Container(
                                  width: 20.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/wallet/icons/usdc_icon.png'),
                                          colorFilter: ColorFilter.mode(
                                            Colors.white.withOpacity(0.5),
                                            BlendMode.modulate,
                                          ))),
                                )
                              : Image.asset(
                                  "assets/images/wallet/icons/usdc_icon.png",
                                  width: 20.w,
                                  height: 20.h,
                                ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "USDC",
                              style: TextStyle(
                                  color: usdc_ontap != true
                                      ? Colors.grey.shade300
                                      : Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                      child: Text(
                        "1",
                        style: TextStyle(
                            color: usdc_ontap != true
                                ? Colors.grey.shade300
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
