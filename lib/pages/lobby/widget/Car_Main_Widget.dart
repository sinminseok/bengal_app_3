import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Car_Maindetail_Widget.dart';

class Car_Main_StatefulWidget extends StatefulWidget {
  const Car_Main_StatefulWidget({Key? key}) : super(key: key);

  @override
  _Car_Main_StatefulWidgetState createState() => _Car_Main_StatefulWidgetState();
}

class _Car_Main_StatefulWidgetState extends State<Car_Main_StatefulWidget> {
  var carlist;
  @override
  void initState() {
    carlist = StorageController().carNftList!.list;
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Container(
      //margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
        width: 390.w,
        height: 277.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [],
        ),
        child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: carlist.length,
            itemBuilder: (BuildContext ctx, int idx) {
              return Car_Maindetail_Widget(context,carlist[idx]);
            }));
  }
}

