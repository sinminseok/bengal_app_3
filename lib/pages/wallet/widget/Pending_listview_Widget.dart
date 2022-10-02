import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/transfer.dart';
import '../../../types/common.dart';
import 'Sent_and_Receive_Widget.dart';

Widget Pending_listview(Size size) {
  return Container(
    margin: EdgeInsets.fromLTRB(3.w, 20.h, 5.w, 3.h),
    width: 360.w,
    height: 200.h,
    //추후 ListView builder로 변경
    child: ListView(
      children: [
        Sent_and_Receive_Widget(
            size,
            TransferHistoryItem(
                1, TransferType.Sent, CoinType.XPer, 20.0, DateTime.now())),
      ],
    ),
  );
}
