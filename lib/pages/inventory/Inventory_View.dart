import 'package:bengal_app/pages/inventory/popup/filter_popup.dart';
import 'package:bengal_app/pages/inventory/widget/carboxes/Inventory_CarBoxes_View.dart';
import 'package:bengal_app/pages/inventory/widget/cars/Inventory_cars_View.dart';
import 'package:bengal_app/pages/inventory/widget/dropdown_button/DropdownButton2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Controller/storage_controller.dart';
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
              height: 120.h,
              decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: Colors.grey.shade300)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(

                          child: InkWell(
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
                                  border: Border.all(color: Colors.grey.shade300),
                                  color: Cars_selected != true
                                      ? Colors.white
                                      : kPrimaryColor,
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
                        ),
                        Container(

                          child: InkWell(
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
                                  border: Border.all(color: Colors.grey.shade300),
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
                        ),
                        Container(

                          child: InkWell(
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
                                  border: Border.all(color: Colors.grey.shade300),
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
                        ),
                        Container(

                          child: InkWell(
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
                                  border: Border.all(color: Colors.grey.shade300),
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
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 150.w, 0.h),
                        width: 120.w,
                        height: 30.h,
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
                        margin: EdgeInsets.fromLTRB(15.w, 7.h, 10.w, 0.h),
                        child: InkWell(
                            onTap: () {
                              Game_Filter_popup().showDialog(size, context);
                            },
                            child: Image.asset(
                              "assets/images/inventory/filter.png",
                              width: 36.w,
                              height: 36.h,
                            )),
                      ),

                    ],
                  ),

                ],
              ),
            ),
            Cars_selected == true ? Inventory_Cars_View(size, StorageController().carNftList!) : Container(),
            Car_Boxes_selected == true
                ? Inventory_CarBoxes_View(size, StorageController().boxNftList!)
                : Container(),
            Gems_selected == true ? Inventory_Cars_View(size, StorageController().carNftList!) : Container(),
            Others_selected == true ? Inventory_Cars_View(size, StorageController().carNftList!) : Container(),
          ],
        ),
      ),
    );
  }
}
