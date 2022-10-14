import 'package:bengal_app/pages/market/popup/filter_popup.dart';
import 'package:bengal_app/pages/market/widget/cars/Market_Car_Card2.dart';
import 'package:bengal_app/pages/market/widget/cars/Market_Cars_View.dart';
import 'package:bengal_app/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../controller/storage_controller.dart';
import '../../common/observer.dart';
import '../../types/constants.dart';
import '../game/popup/filter_popup.dart';
import '../inventory/widget/carboxes/Inventory_CarBoxes_View.dart';
import '../inventory/widget/dropdown_button/DropdownButton2.dart';

class Market_View extends StatefulWidget {
  const Market_View({Key? key}) : super(key: key);

  @override
  _Market_ViewState createState() => _Market_ViewState();
}

class _Market_ViewState extends State<Market_View> {
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
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: boxShadowColor.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 2.0,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 10.h),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                border: Cars_selected != true ? Border.all(color: LINE_EBEBEB) : null,
                                color: Cars_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(7)),
                                boxShadow: [
                                  Cars_selected != true ?
                                  const BoxShadow(
                                    color: Colors.transparent,
                                    spreadRadius: 0,
                                    blurRadius: 0.0,
                                    offset: Offset(0, 0), // changes position of shadow
                                  ) :
                                  BoxShadow(
                                    color: kPrimaryColor.withOpacity(0.2),
                                    spreadRadius: 0,
                                    blurRadius: 9.0,
                                    offset: const Offset(0, 6), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  "Cars",
                                  style: TextStyle(
                                      color: Cars_selected != true
                                          ? Disabled_BAB8C4
                                          : Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showtoast("Coming soon");
                              // setState(() {
                              //   Cars_selected = false;
                              //   Car_Boxes_selected = true;
                              //   Gems_selected = false;
                              //   Others_selected = false;
                              // });
                            },
                            child: Container(
                              width: 86.w,
                              height: 34.h,
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                border: Car_Boxes_selected != true ? Border.all(color: LINE_EBEBEB) : null,
                                color: Car_Boxes_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(7)),
                                boxShadow: [
                                  Car_Boxes_selected != true ?
                                  const BoxShadow(
                                    color: Colors.transparent,
                                    spreadRadius: 0,
                                    blurRadius: 0.0,
                                    offset: Offset(0, 0), // changes position of shadow
                                  ) :
                                  BoxShadow(
                                    color: kPrimaryColor.withOpacity(0.2),
                                    spreadRadius: 0,
                                    blurRadius: 9.0,
                                    offset: const Offset(0, 6), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  "Car Boxes",
                                  style: TextStyle(
                                      color: Car_Boxes_selected != true
                                          ? Disabled_BAB8C4
                                          : Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showtoast("Coming soon");
                              // setState(() {
                              //   Cars_selected = false;
                              //   Car_Boxes_selected = false;
                              //   Gems_selected = true;
                              //   Others_selected = false;
                              // });
                            },
                            child: Container(
                              width: 86.w,
                              height: 34.h,
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                border: Gems_selected != true ? Border.all(color: LINE_EBEBEB) : null,
                                color: Gems_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(7)),
                                boxShadow: [
                                  Gems_selected != true ?
                                  const BoxShadow(
                                    color: Colors.transparent,
                                    spreadRadius: 0,
                                    blurRadius: 0.0,
                                    offset: Offset(0, 0), // changes position of shadow
                                  ) :
                                  BoxShadow(
                                    color: kPrimaryColor.withOpacity(0.2),
                                    spreadRadius: 0,
                                    blurRadius: 9.0,
                                    offset: const Offset(0, 6), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  "Gems",
                                  style: TextStyle(
                                      color: Gems_selected != true
                                          ? Disabled_BAB8C4
                                          : Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showtoast("Coming soon");
                              // setState(() {
                              //   Cars_selected = false;
                              //   Car_Boxes_selected = false;
                              //   Gems_selected = false;
                              //   Others_selected = true;
                              // });
                            },
                            child: Container(
                              width: 86.w,
                              height: 34.h,
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                border: Others_selected != true ? Border.all(color: LINE_EBEBEB) : null,
                                color: Others_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(7)),
                                boxShadow: [
                                  Others_selected != true ?
                                  const BoxShadow(
                                    color: Colors.transparent,
                                    spreadRadius: 0,
                                    blurRadius: 0.0,
                                    offset: Offset(0, 0), // changes position of shadow
                                  ) :
                                  BoxShadow(
                                    color: kPrimaryColor.withOpacity(0.2),
                                    spreadRadius: 0,
                                    blurRadius: 9.0,
                                    offset: const Offset(0, 6), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  "Others",
                                  style: TextStyle(
                                      color: Others_selected != true
                                          ? Disabled_BAB8C4
                                          : Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
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
                          InkWell(
                              onTap: () {
                                Game_Filter_popup().showDialog(size, context);
                              },
                              child: Image.asset(
                                "assets/images/inventory/filter.png",
                                width: 36.w,
                                height: 36.h,
                              )
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // Car_Boxes_selected==true?Inventory_CarBoxes_View(size, StorageController().boxNftPool!):Container(),
                // Gems_selected==true?Inventory_Cars_View(size):Container(),
                // Others_selected==true?Inventory_Cars_View(size):Container(),


              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffFDFDFD),
              ),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 15.h,
                  childAspectRatio: 1 / 1.44,
                ),
                padding: EdgeInsets.only(
                    left: 15.w, right: 15.w, top: 15.h, bottom: 15.h),
                itemCount: StorageController().carNftPool.list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Market_Car_Card2(
                      size: size,
                      color: Colors.blue,
                      context: context,
                      car: StorageController().carNftPool.list[index]
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
