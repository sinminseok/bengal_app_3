import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Sent_and_Receive_Widget.dart';

Widget History_listview(Size size){
  return Container(
    margin: EdgeInsets.fromLTRB(3.w, 20.h, 5.w, 3.h),
    width: 360.w,
    height: 240.h,
    child: ListView.builder(
        itemCount: StorageController().transferHistory!.list.length,
        itemBuilder: (BuildContext ctx, int idx) {
          return Sent_and_Receive_Widget(
              size,
              StorageController().transferHistory!.list[idx]);
        }),
    );
}
