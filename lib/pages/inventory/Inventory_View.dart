import 'package:bengal_app/pages/inventory/widget/carboxes/Inventory_CarBoxes_View.dart';
import 'package:bengal_app/pages/inventory/widget/cars/Inventory_cars_View.dart';
import 'package:bengal_app/pages/inventory/widget/dropdown_button/DropdownButton2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../types/constants.dart';
import '../game/popup/filter_popup.dart';

class Inventory_View extends StatefulWidget {
  const Inventory_View({Key? key}) : super(key: key);

  @override
  _Inventory_ViewState createState() => _Inventory_ViewState();
}

class _Inventory_ViewState extends State<Inventory_View> {
  bool Cars_selected = true;
  bool Car_Boxes_selected = false;
  bool Gems_selected = false;
  bool Others_selected = false;

  final List<String> items = [
    'Lowest Level',
    'Highest Level',
    'Lastest',
  ];
  String? selectedValue = "Lowest Level";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Selected_Bar
            Container(
              width: 390.w,
              height: 110.h,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
              ),
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Cars_selected = true;
                            Car_Boxes_selected = false;
                            Gems_selected = false;
                            Others_selected = false;
                          });
                        },
                        child: Container(
                          width: 86.w,
                          height: 34.h,
                          decoration: BoxDecoration(

                              color: Cars_selected != true
                                  ? Colors.white
                                  : kPrimaryColor,
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Cars",
                              style: TextStyle(
                                  color: Cars_selected != true
                                      ? Colors.grey
                                      : Colors.white),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Cars_selected = false;
                            Car_Boxes_selected = true;
                            Gems_selected = false;
                            Others_selected = false;
                          });
                        },
                        child: Container(
                          width: 86.w,
                          height: 34.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              color: Car_Boxes_selected != true
                                  ? Colors.white
                                  : kPrimaryColor,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Car Boxes",
                              style: TextStyle(
                                  color: Car_Boxes_selected != true
                                      ? Colors.grey
                                      : Colors.white),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Cars_selected = false;
                            Car_Boxes_selected = false;
                            Gems_selected = true;
                            Others_selected = false;
                          });
                        },
                        child: Container(
                          width: 86.w,
                          height: 34.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              color: Gems_selected != true
                                  ? Colors.white
                                  : kPrimaryColor,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Gems",
                              style: TextStyle(
                                  color: Gems_selected != true
                                      ? Colors.grey
                                      : Colors.white),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Cars_selected = false;
                            Car_Boxes_selected = false;
                            Gems_selected = false;
                            Others_selected = true;
                          });
                        },
                        child: Container(
                          width: 86.w,
                          height: 34.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),

                              color: Others_selected != true
                                  ? Colors.white
                                  : kPrimaryColor,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              "Others",
                              style: TextStyle(
                                  color: Others_selected != true
                                      ? Colors.grey
                                      : Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(1.w, 10.h, 15.w, 0.h),

                        width:125.w,
                        height: 38.h,
                        child: CustomDropdownButton2(
                          hint: 'Lowest Level',
                          dropdownItems: items,
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(175.w, 10.h, 15.w, 0.h),

                        height: 37.h,
                        width: 37.h,
                        child: InkWell(
                            onTap: () {
                              Filter_popup().showDialog(size, context);

                            },
                            child: Image.asset(
                              "assets/images/inventory/filter.png",

                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Cars_selected==true?Inventory_Cars_View(size):Container(),
            Car_Boxes_selected==true?Inventory_CarBoxes_View(size):Container(),
            Gems_selected==true?Inventory_Cars_View(size):Container(),
            Others_selected==true?Inventory_Cars_View(size):Container(),


          ],
        ),
      ),
    );
  }
}
