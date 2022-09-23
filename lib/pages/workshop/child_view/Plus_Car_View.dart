import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../inventory/widget/dropdown_button/DropdownButton2.dart';
import '../widget/Mint/Workshop_Cars_View.dart';

class Plus_Car_View extends StatefulWidget {
  const Plus_Car_View({Key? key}) : super(key: key);

  @override
  _Plus_Car_ViewState createState() => _Plus_Car_ViewState();
}

class _Plus_Car_ViewState extends State<Plus_Car_View> {
  final List<String> items = [
    'Lowest Level',
    'Highest Level',
    'Lastest',
  ];
  String? selectedValue = "Lowest Level";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 390.w,
            height: 200.h,
            color: Colors.grey.shade300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/workshop/empty_plus.png",
                    width: 173.w,
                    height: 173.h,
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/images/workshop/empty_plus.png",
                    width: 173.w,
                    height: 173.h,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 390.w,
            height: 80.h,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10.w, 7.h, 15.w, 0.h),
                  width: 125.w,
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
                  margin: EdgeInsets.fromLTRB(175.w, 7.h, 15.w, 0.h),
                  height: 37.h,
                  width: 37.h,
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/inventory/filter.png",
                      )),
                )
              ],
            ),
          ),
          Container(

            width: 390.w,
            height: 297.h,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(width: 1.w, color: Colors.grey.shade300))
            ),

            child: Workshop_Cars_View(size),
          )
        ],
      ),
    );
  }
}
