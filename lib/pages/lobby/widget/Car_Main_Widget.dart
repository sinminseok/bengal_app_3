import 'package:bengal_app/Controller/storage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:page_transition/page_transition.dart';
import '../../../utils/font.dart';
import '../../car/Car_Detail_FrameView.dart';
import '../../car/Car_Detail_FrameView2.dart';
import 'Car_Maindetail_Widget.dart';

// Widget Car_Main_Widget(BuildContext context) {
//   return Container(
//       //margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
//       width: 390.w,
//       height: 277.h,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [],
//       ),
//       child: PageView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: 3,
//           itemBuilder: (BuildContext ctx, int idx) {
//             return Car_Maindetail_Widget();
//           }));
// }

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

