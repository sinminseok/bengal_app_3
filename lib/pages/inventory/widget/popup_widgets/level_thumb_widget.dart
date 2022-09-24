
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';

class Inventory_Thumb_Widget extends StatefulWidget {
  double start_value;
  double end_value;

  double min_value;
  double max_value;
  Inventory_Thumb_Widget({Key? key, required this.start_value,required this.end_value,required this.min_value,required this.max_value}) : super(key: key);

  @override
  _Inventory_Thumb_Widget createState() => _Inventory_Thumb_Widget();
}

class _Inventory_Thumb_Widget extends State<Inventory_Thumb_Widget> {

  RangeValues values = RangeValues(1, 30);
  RangeValues? _currentRangeValues;

  @override
  void initState() {
    _currentRangeValues=
        RangeValues(widget.start_value, widget.end_value);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          width: 300.w,
          height: 30.h,

          child:RangeSlider(
              values: _currentRangeValues!,
              max: widget.max_value,
              min: widget.min_value,
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
          ],),



      ],
    );
  }
}
