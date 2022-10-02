import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../models/transfer.dart';
import '../../../types/common.dart';
import '../../../utils/coin.dart';
import '../../../utils/font.dart';

Widget Sent_and_Receive_Widget(Size size, TransferHistoryItem item) {
  return Container(
    margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
    height: 80.h,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.white),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(3.w, 10.h, 15.w, 0.h),
                  child: Text(describeEnum(item.transferType))),
              Container(
                  margin: EdgeInsets.fromLTRB(3.w, 10.h, 15.w, 0.h),
                  child: Text(
                    DateFormat('dd-MM-yyyy hh:mm').format(item.createdAt),
                    style: Font.lato(
                        const Color(0xFF746F7B), FontWeight.w400, 10.sp),
                  ))
            ],
          ),
        ),
        TransferType.Received == item.transferType
            ? Container(
                margin: EdgeInsets.fromLTRB(3.w, 10.h, 15.w, 0.h),
                child: Text(
                    "-${DigitUtil.doubleToString(item.amount)} ${describeEnum(item.coinType)}",
                    style: Font.lato(const Color(0xFFDE4460), FontWeight.bold, 14.sp)))
            : Container(
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                child: Text(
                    "+${DigitUtil.doubleToString(item.amount)} ${describeEnum(item.coinType)}",
                    style: Font.lato(const Color(0xFF15BEA0), FontWeight.bold, 14.sp)))
      ],
    ),
  );
}
