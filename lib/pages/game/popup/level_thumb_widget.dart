
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/constants.dart';

class Level_Thumb_Widget extends StatefulWidget {
  const Level_Thumb_Widget({Key? key}) : super(key: key);

  @override
  _Level_Thumb_WidgetState createState() => _Level_Thumb_WidgetState();
}

class _Level_Thumb_WidgetState extends State<Level_Thumb_Widget> {
  RangeValues values = RangeValues(1, 30);
  RangeValues _currentRangeValues = const RangeValues(10, 30);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
      width: 300.w,
      height: 30.h,

      child:RangeSlider(
          values: _currentRangeValues,
          max: 30,
          inactiveColor: Colors.grey.shade300,

          activeColor: kPrimaryColor,
          divisions: 100,
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          }),

// and dynamically update value use this line

    ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
              margin: EdgeInsets.fromLTRB(27.w, 3.h, 15.w, 0.h),



              child: Text("1",style: TextStyle(color: Colors.grey.shade500,fontSize: 10),)),
          Container(
              margin: EdgeInsets.fromLTRB(15.w, 3.h, 27.w, 0.h),



              child: Text("30",style: TextStyle(color: Colors.grey.shade500,fontSize: 10)))
        ],)
      ],
    );
  }
}
