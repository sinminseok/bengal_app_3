import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/constants.dart';
import '../widget/Drawer_widget.dart';


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
        child: Drawer(
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
                    width: size.width * 0.8,
                    height: size.height * 0.002,
                    color: Colors.grey.shade300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Drawer_Coin_Widet(size),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                              height: 70.h,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade400),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
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
                                  SizedBox(
                                    width: size.width * 0.4,
                                  ),
                                  Icon(
                                    cars_ontap == true
                                        ? Icons.keyboard_arrow_up_sharp
                                        : Icons.keyboard_arrow_down_sharp,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                            cars_ontap == true
                                ? Container(
                              width: 290.w,
                              height: 200.h,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: ListView(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets.all(3.0),
                                            child: Image.asset(
                                              "assets/images/common/cars/car1.png",
                                              width: 104.w,
                                              height: 65.h,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                " Sedan/ Normal/ Lv7",
                                                style: TextStyle(
                                                    color:
                                                    Colors.grey.shade700,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(
                                                        8.0),
                                                    child: Container(
                                                      width:
                                                      size.width * 0.23,
                                                      height:
                                                      size.height * 0.03,
                                                      decoration:
                                                      BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                            Colors.grey),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30.0) //         <--- border radius here
                                                        ),
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left:
                                                                3.0),
                                                            child: Container(
                                                              width:
                                                              size.width *
                                                                  0.04,
                                                              height:
                                                              size.height *
                                                                  0.04,
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                  kPrimaryColor,
                                                                  shape: BoxShape
                                                                      .circle),
                                                              child: Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: size
                                                                        .width *
                                                                        0.0073,
                                                                  ),
                                                                  Text(
                                                                    "#",
                                                                    style: TextStyle(
                                                                        color:
                                                                        Colors.white),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width:
                                                            size.width *
                                                                0.02,
                                                          ),
                                                          Text(
                                                            "12345",
                                                            style: TextStyle(
                                                                fontSize: 12),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                    "assets/images/lobby/icons/limited_button.png",
                                                    width: size.width * 0.15,
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: size.width * 0.68,
                                          height: size.height * 0.001,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets.all(3.0),
                                            child: Image.asset(
                                              "assets/images/common/cars/car1.png",
                                              width: size.width * 0.25,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                " Sedan/ Normal/ Lv7",
                                                style: TextStyle(
                                                    color:
                                                    Colors.grey.shade700,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(
                                                        8.0),
                                                    child: Container(
                                                      width:
                                                      size.width * 0.23,
                                                      height:
                                                      size.height * 0.03,
                                                      decoration:
                                                      BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                            Colors.grey),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30.0) //         <--- border radius here
                                                        ),
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left:
                                                                3.0),
                                                            child: Container(
                                                              width:
                                                              size.width *
                                                                  0.04,
                                                              height:
                                                              size.height *
                                                                  0.04,
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                  kPrimaryColor,
                                                                  shape: BoxShape
                                                                      .circle),
                                                              child: Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: size
                                                                        .width *
                                                                        0.0073,
                                                                  ),
                                                                  Text(
                                                                    "#",
                                                                    style: TextStyle(
                                                                        color:
                                                                        Colors.white),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width:
                                                            size.width *
                                                                0.02,
                                                          ),
                                                          Text(
                                                            "12345",
                                                            style: TextStyle(
                                                                fontSize: 12),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                    "assets/images/lobby/icons/limited_button.png",
                                                    width: size.width * 0.15,
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: size.width * 0.68,
                                          height: size.height * 0.001,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets.all(3.0),
                                            child: Image.asset(
                                              "assets/images/common/cars/car1.png",
                                              width: size.width * 0.25,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                " Sedan/ Normal/ Lv7",
                                                style: TextStyle(
                                                    color:
                                                    Colors.grey.shade700,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(
                                                        8.0),
                                                    child: Container(
                                                      width:
                                                      size.width * 0.23,
                                                      height:
                                                      size.height * 0.03,
                                                      decoration:
                                                      BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                            Colors.grey),
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30.0) //         <--- border radius here
                                                        ),
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left:
                                                                3.0),
                                                            child: Container(
                                                              width:
                                                              size.width *
                                                                  0.04,
                                                              height:
                                                              size.height *
                                                                  0.04,
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                  kPrimaryColor,
                                                                  shape: BoxShape
                                                                      .circle),
                                                              child: Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: size
                                                                        .width *
                                                                        0.0073,
                                                                  ),
                                                                  Text(
                                                                    "#",
                                                                    style: TextStyle(
                                                                        color:
                                                                        Colors.white),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width:
                                                            size.width *
                                                                0.02,
                                                          ),
                                                          Text(
                                                            "12345",
                                                            style: TextStyle(
                                                                fontSize: 12),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                    "assets/images/lobby/icons/limited_button.png",
                                                    width: size.width * 0.15,
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: size.width * 0.68,
                                          height: size.height * 0.001,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
                              height: 70.h,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade400),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
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
                                  SizedBox(
                                    width: size.width * 0.3,
                                  ),
                                  Icon(
                                    boxs_ontap == true
                                        ? Icons.keyboard_arrow_up_sharp
                                        : Icons.keyboard_arrow_down_sharp,
                                    color: Colors.grey,
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
                              child: ListView(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: size.width*0.13,),
                                          Image.asset(
                                            "assets/images/inventory/car_boxes/EPIC.png",
                                            width: size.width * 0.14,
                                          ),
                                          SizedBox(width: size.width*0.07,),
                                          Column(
                                            //mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text("EPIC"),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: size.width * 0.23,
                                                  height: size.height * 0.03,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.grey),
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(
                                                            30.0) //         <--- border radius here
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets.only(
                                                            left: 3.0),
                                                        child: Container(
                                                          width:
                                                          size.width * 0.04,
                                                          height:
                                                          size.height * 0.04,
                                                          decoration: BoxDecoration(
                                                              color:
                                                              kPrimaryColor,
                                                              shape: BoxShape
                                                                  .circle),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(
                                                                width:
                                                                size.width *
                                                                    0.0073,
                                                              ),
                                                              Text(
                                                                "#",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: size.width * 0.02,
                                                      ),
                                                      Text(
                                                        "12345",
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: size.width * 0.68,
                                          height: size.height * 0.001,
                                          color: Colors.grey,
                                        ),
                                      ),

                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: size.width*0.13,),
                                          Image.asset(
                                            "assets/images/inventory/car_boxes/EPIC.png",
                                            width: size.width * 0.14,
                                          ),
                                          SizedBox(width: size.width*0.07,),
                                          Column(
                                            //mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text("EPIC"),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: size.width * 0.23,
                                                  height: size.height * 0.03,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.grey),
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(
                                                            30.0) //         <--- border radius here
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets.only(
                                                            left: 3.0),
                                                        child: Container(
                                                          width:
                                                          size.width * 0.04,
                                                          height:
                                                          size.height * 0.04,
                                                          decoration: BoxDecoration(
                                                              color:
                                                              kPrimaryColor,
                                                              shape: BoxShape
                                                                  .circle),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(
                                                                width:
                                                                size.width *
                                                                    0.0073,
                                                              ),
                                                              Text(
                                                                "#",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: size.width * 0.02,
                                                      ),
                                                      Text(
                                                        "12345",
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: size.width * 0.68,
                                          height: size.height * 0.001,
                                          color: Colors.grey,
                                        ),
                                      ),

                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: size.width*0.13,),
                                          Image.asset(
                                            "assets/images/inventory/car_boxes/EPIC.png",
                                            width: size.width * 0.14,
                                          ),
                                          SizedBox(width: size.width*0.07,),
                                          Column(
                                            //mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text("EPIC"),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: size.width * 0.23,
                                                  height: size.height * 0.03,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.grey),
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(
                                                            30.0) //         <--- border radius here
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets.only(
                                                            left: 3.0),
                                                        child: Container(
                                                          width:
                                                          size.width * 0.04,
                                                          height:
                                                          size.height * 0.04,
                                                          decoration: BoxDecoration(
                                                              color:
                                                              kPrimaryColor,
                                                              shape: BoxShape
                                                                  .circle),
                                                          child: Row(
                                                            children: [
                                                              SizedBox(
                                                                width:
                                                                size.width *
                                                                    0.0073,
                                                              ),
                                                              Text(
                                                                "#",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: size.width * 0.02,
                                                      ),
                                                      Text(
                                                        "12345",
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: size.width * 0.68,
                                          height: size.height * 0.001,
                                          color: Colors.grey,
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
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
            )),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: kAppbarColor, //change your color here
        ),
        toolbarHeight: 97.h,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 13.0),
                  child: Container(
                    width: size.width * 0.1,
                    height: size.height * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.24,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Transfer",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: size.width * 0.15,
              ),
            ],
          ),
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