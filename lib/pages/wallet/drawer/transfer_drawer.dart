

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/constants.dart';
import '../widget/Drawer_widget.dart';
import '../widget/drawer/Car_Info_Widget.dart';

class Transfer_Drawer extends StatefulWidget {

   Transfer_Drawer({Key? key}) : super(key: key);

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
                width: size.width * 0.8,
                height: size.height * 0.002,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Drawer_Coin_Widet(size,20,30,20),
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
                              Car_Info_Widet(),
                              Car_Info_Widet()
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
        ));
  }
}
