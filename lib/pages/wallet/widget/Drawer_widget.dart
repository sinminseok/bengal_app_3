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
  const Token_Bar({
    Key? key,
    required this.exceptCoin,
    required this.coinSelected
  }) : super(key: key);

  @override
  _Token_BarState createState() => _Token_BarState();

  final CoinType exceptCoin;
  final CoinSelected coinSelected;
}

class _Token_BarState extends State<Token_Bar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AbsorbPointer(
          absorbing: widget.exceptCoin == CoinType.XPer,
          child: InkWell(
            onTap: () {
              setState(() {
                widget.coinSelected(CoinType.XPer);
                Navigator.pop(context);
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
                          color: widget.exceptCoin == CoinType.XPer
                              ? Colors.grey.shade300
                              : Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                        child: Row(
                          children: [
                            widget.exceptCoin == CoinType.XPer
                                ? Container(
                                    width: 20.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(AssetsController().getCoinIcon(CoinType.XPer)),
                                            colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.modulate,
                                            ))),
                                  )
                                : Image.asset(AssetsController().getCoinIcon(CoinType.XPer),
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                AssetsController().getCoinUpperCaseName(CoinType.XPer),
                                style: TextStyle(
                                    color: widget.exceptCoin == CoinType.XPer
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
                          StorageController().onChainWallet!.balanceString(CoinType.XPer),
                          style: Font.lato(widget.exceptCoin == CoinType.XPer
                              ? Colors.grey.shade300
                              : Colors.grey, FontWeight.bold, 14.sp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        AbsorbPointer(
          absorbing: widget.exceptCoin == CoinType.Per,
          child: InkWell(
            onTap: () {
              setState(() {
                widget.coinSelected(CoinType.Per);
                Navigator.pop(context);
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
                          color: widget.exceptCoin == CoinType.Per
                              ? Colors.grey.shade300
                              : kPerColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                        child: Row(
                          children: [
                            widget.exceptCoin == CoinType.Per
                                ? Container(
                                    width: 20.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(AssetsController().getCoinIcon(CoinType.Per)),
                                            colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.modulate,
                                            ))),
                                  )
                                : Image.asset(AssetsController().getCoinIcon(CoinType.Per),
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                AssetsController().getCoinUpperCaseName(CoinType.Per),
                                style: TextStyle(
                                    color: widget.exceptCoin == CoinType.Per
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
                          StorageController().onChainWallet!.balanceString(CoinType.Per),
                          style: Font.lato(widget.exceptCoin == CoinType.Per
                              ? Colors.grey.shade300
                              : kPerColor, FontWeight.bold, 14.sp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        AbsorbPointer(
          absorbing: widget.exceptCoin == CoinType.Havah,
          child: InkWell(
            onTap: () {
              setState(() {
                widget.coinSelected(CoinType.Havah);
                Navigator.pop(context);
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
                          color: widget.exceptCoin == CoinType.Havah
                              ? Colors.grey.shade300
                              : kCharColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                        child: Row(
                          children: [
                            widget.exceptCoin == CoinType.Havah
                                ? Container(
                                    width: 20.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(AssetsController().getCoinIcon(CoinType.Havah)),
                                            colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.modulate,
                                            ))),
                                  )
                                : Image.asset(AssetsController().getCoinIcon(CoinType.Havah),
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                AssetsController().getCoinUpperCaseName(CoinType.Havah),
                                style: TextStyle(
                                    color: widget.exceptCoin == CoinType.Havah
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
                          StorageController().onChainWallet!.balanceString(CoinType.Havah),
                          style: Font.lato(widget.exceptCoin == CoinType.Havah
                              ? Colors.grey.shade300
                              : kCharColor, FontWeight.bold, 14.sp),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        AbsorbPointer(
          absorbing: widget.exceptCoin == CoinType.Usdc,
          child: InkWell(
            onTap: () {
              setState(() {
                widget.coinSelected(CoinType.Usdc);
                Navigator.pop(context);
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
                          color: widget.exceptCoin == CoinType.Usdc
                              ? Colors.grey.shade300
                              : Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                        child: Row(
                          children: [
                            widget.exceptCoin == CoinType.Usdc
                                ? Container(
                                    width: 20.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(AssetsController().getCoinIcon(CoinType.Usdc)),
                                            colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(0.5),
                                              BlendMode.modulate,
                                            ))),
                                  )
                                : Image.asset(AssetsController().getCoinIcon(CoinType.Usdc),
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                AssetsController().getCoinUpperCaseName(CoinType.Usdc),
                                style: TextStyle(
                                    color: widget.exceptCoin == CoinType.Usdc
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
                          StorageController().onChainWallet!.balanceString(CoinType.Usdc),
                          style: Font.lato(widget.exceptCoin == CoinType.Usdc
                              ? Colors.grey.shade300
                              : Colors.grey, FontWeight.bold, 14.sp),
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
}
