import 'package:bengal_app/pages/inventory/widget/carboxes/Inventory_CarBoxes_View.dart';
import 'package:bengal_app/pages/inventory/widget/cars/Inventory_cars_View.dart';
import 'package:bengal_app/pages/inventory/widget/dropdown_button/DropdownButton2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controller/storage_controller.dart';
import '../../models/box.dart';
import '../../models/car.dart';
import '../../types/constants.dart';
import '../game/popup/filter_popup.dart';

class Inventory_View extends StatefulWidget {
  const Inventory_View({Key? key}) : super(key: key);

  @override
  _Inventory_ViewState createState() => _Inventory_ViewState();
}

enum InventoryTabItem {
  cars,
  boxes,
  gems,
  others
}

class _Inventory_ViewState extends State<Inventory_View> {

  InventoryTabItem selectedTab = InventoryTabItem.cars;

  Map<InventoryTabItem, String> selectedSortValues = {
    InventoryTabItem.cars : CarNftList.getSortItems()[0],
    InventoryTabItem.boxes : BoxNftList.getSortItems()[0],
    InventoryTabItem.gems : BoxNftList.getSortItems()[0],
    InventoryTabItem.others : BoxNftList.getSortItems()[0],
  };

  List<String> getSortItems() {
    switch (selectedTab) {
      case InventoryTabItem.cars:
        return CarNftList.getSortItems();
      case InventoryTabItem.boxes:
        return BoxNftList.getSortItems();
      case InventoryTabItem.gems:
        return BoxNftList.getSortItems();
      case InventoryTabItem.others:
        return BoxNftList.getSortItems();
      default:
        return [];
    }
  }

  void onChangeSortDropdownBox(String? value) {
    if (null == value || value.isEmpty) return;

    setState(() {
      selectedSortValues[selectedTab] = value;
      switch (selectedTab) {
        case InventoryTabItem.cars:
          StorageController().carNftList!.sort(value.getCarSortType);
          break;
        case InventoryTabItem.boxes:
          StorageController().boxNftList!.sort(value.getBoxSortType);
          break;
        case InventoryTabItem.gems:
          StorageController().boxNftList!.sort(value.getBoxSortType);
          break;
        case InventoryTabItem.others:
          StorageController().boxNftList!.sort(value.getBoxSortType);
          break;
      }
    });
  }

  void onChangeFilter() {

  }

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
                color: Colors.white,
                border:
                Border(top: BorderSide(color: Colors.grey.shade300), bottom: BorderSide(color: Colors.grey.shade300)),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedTab = InventoryTabItem.cars;
                            });
                          },
                          child: Container(
                            width: 86.w,
                            height: 34.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                color: selectedTab != InventoryTabItem.cars
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Cars",
                                style: TextStyle(
                                    color: selectedTab != InventoryTabItem.cars
                                        ? Colors.grey
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedTab = InventoryTabItem.boxes;
                            });
                          },
                          child: Container(
                            width: 86.w,
                            height: 34.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                color: selectedTab != InventoryTabItem.boxes
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Car Boxes",
                                style: TextStyle(
                                    color: selectedTab != InventoryTabItem.boxes
                                        ? Colors.grey
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedTab = InventoryTabItem.gems;
                            });
                          },
                          child: Container(
                            width: 86.w,
                            height: 34.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                color: selectedTab != InventoryTabItem.gems
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Gems",
                                style: TextStyle(
                                    color: selectedTab != InventoryTabItem.gems
                                        ? Colors.grey
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedTab = InventoryTabItem.others;
                            });
                          },
                          child: Container(
                            width: 86.w,
                            height: 34.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                color: selectedTab != InventoryTabItem.others
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Others",
                                style: TextStyle(
                                    color: selectedTab != InventoryTabItem.others
                                        ? Colors.grey
                                        : Colors.white),
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
                          hint: getSortItems()[0],
                          dropdownItems: getSortItems(),
                          value: selectedSortValues[selectedTab]!.isEmpty
                              ? getSortItems()[0]
                              : selectedSortValues[selectedTab],
                          onChanged: (value) {
                            onChangeSortDropdownBox(value);
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
            selectedTab == InventoryTabItem.cars
                ? Inventory_Cars_View(size, StorageController().carNftList!)
                : Container(),
            selectedTab == InventoryTabItem.boxes
                ? Inventory_CarBoxes_View(size, StorageController().boxNftList!)
                : Container(),
            selectedTab == InventoryTabItem.gems
                ? Inventory_Cars_View(size, StorageController().carNftList!)
                : Container(),
            selectedTab == InventoryTabItem.others
                ? Inventory_Cars_View(size, StorageController().carNftList!)
                : Container(),
          ],
        ),
      ),
    );
  }
}
