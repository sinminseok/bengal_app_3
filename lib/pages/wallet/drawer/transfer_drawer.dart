

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/common.dart';
import '../../../types/constants.dart';
import '../widget/Drawer_widget.dart';
import '../widget/drawer/CarBox_Info_Widget.dart';
import '../widget/drawer/Car_Info_Widget.dart';

class Transfer_Drawer extends StatefulWidget {

   Transfer_Drawer({
     Key? key,
     required this.fromLocalWallet,
     required this.coinSelected
   }) : super(key: key);

   CoinSelected coinSelected;
   bool fromLocalWallet;

  @override
  _Transfer_DrawerState createState() => _Transfer_DrawerState();
}

class _Transfer_DrawerState extends State<Transfer_Drawer> {

  bool change = false;
  bool cars_ontap = false;
  bool boxs_ontap = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 60.h, 15.w, 19.h),
                child: Text(
                  "Token Select",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 330.w,
                height: 1.h,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Drawer_Coin_Widet(context,
                    size,
                    widget.fromLocalWallet,
                    widget.coinSelected),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(15.w, 35.h, 15.w, 0.h),

                  child: InkWell(
                    onTap: () {
                      setState(() {
                        cars_ontap = !cars_ontap;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 290.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(15.w, 0.h, 5.w, 0.h),
                                    child: Image.asset(
                                      "assets/images/wallet/icons/car_icon.png",
                                      width: size.width * 0.1,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "Cars",
                                    style: TextStyle(
                                        color: Colors.grey.shade700, fontSize: 17),
                                  ),
                                ],
                              )
                             ,

                              Container(
                                margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                                child: Icon(
                                  cars_ontap == true
                                      ? Icons.keyboard_arrow_up_sharp
                                      : Icons.keyboard_arrow_down_sharp,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        cars_ontap == true
                            ? Container(
                          margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 10.h),

                          width: 290.w,
                          height: 200.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: ListView.builder(
                              padding: MediaQuery.of(context).padding.copyWith(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                top: 10
                              ),
                              itemCount: 5,
                              itemBuilder: (BuildContext ctx, int idx) {
                                return Car_Info_Widet();
                              }

                          ),
                        )
                            : Container()
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        boxs_ontap = !boxs_ontap;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 290.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(15.w, 0.h, 5.w, 0.h),
                                    child: Image.asset(
                                      "assets/images/wallet/icons/box_icon.png",
                                      width: size.width * 0.1,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "Car Boxes",
                                    style: TextStyle(
                                        color: Colors.grey.shade700, fontSize: 17),
                                  ),
                                ],
                              ),


                              Container(
                                margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                                child: Icon(
                                  boxs_ontap == true
                                      ? Icons.keyboard_arrow_up_sharp
                                      : Icons.keyboard_arrow_down_sharp,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        boxs_ontap == true
                            ? Container(
                          width: 290.w,
                          height: 200.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: ListView.builder(
                                padding: MediaQuery.of(context).padding.copyWith(
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                    top: 10
                                ),
                                itemCount: 5,
                                itemBuilder: (BuildContext ctx, int idx) {
                                  return CarBox_Info_Widget();
                                }

                            ),
                          ),
                        )
                            : Container()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
