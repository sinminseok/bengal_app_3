import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../popup/selected_box.dart';
import 'box_container_detail_widget.dart';

class BoxContainer_Widget extends StatefulWidget {
  const BoxContainer_Widget({Key? key}) : super(key: key);

  @override
  _BoxContainer_WidgetState createState() => _BoxContainer_WidgetState();
}

class _BoxContainer_WidgetState extends State<BoxContainer_Widget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
      width: 360.w,
      height: 70.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 5.0,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 17.w),
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  Selected_box_popup().showDialog(size, context);
                },
                child:  BoxContainer_Detail_Widget(size, false, true, false, ""),),
            BoxContainer_Detail_Widget(size, false, false, true, "2h55m"),
            BoxContainer_Detail_Widget(size, true, false, false, ""),

            BoxContainer_Detail_Widget(size, true, false, false, "")
          ],
        ),
      ),
    );
  }
}
