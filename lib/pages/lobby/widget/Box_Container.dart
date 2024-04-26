import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/game.dart';
import '../popup/selected_box_popup.dart';
import 'box_container_detail_widget.dart';

class BoxContainer_Widget extends StatefulWidget {
  const BoxContainer_Widget({Key? key}) : super(key: key);

  @override
  _BoxContainer_WidgetState createState() => _BoxContainer_WidgetState();
}

class _BoxContainer_WidgetState extends State<BoxContainer_Widget> {
  //BoxList를 담을 변수
  List miningboxlist = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
        width: 360.w,
        height: 75.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 5.0,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
            color: Colors.white),
        child: Container(
            height: 20.h,
            margin: EdgeInsets.fromLTRB(10.w, 0.h, 10.w, 0.h),
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext ctx, int idx) {
                  if (idx + 1 <= StorageController().specialBoxList!.list.length) {
                    return BoxContainer_Detail_Widget(
                        context,
                        StorageController().specialBoxList!.list[idx]
                    );
                  } else {
                    return BoxContainer_Detail_Widget(
                        context,
                        MiningBox(0, 0, 0, DateTime.now(), 0.0, 0.0)
                    );
                  }
                })
        ));
  }
}
