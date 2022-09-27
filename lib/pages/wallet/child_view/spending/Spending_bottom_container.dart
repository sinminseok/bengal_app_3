import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../types/constants.dart';
import '../../widget/History_listview_Widget.dart';
import '../../widget/Pending_listview_Widget.dart';

//Wallet Pending,History bottom Container
class Spending_bottom_container extends StatefulWidget {
  const Spending_bottom_container({Key? key}) : super(key: key);

  @override
  _Spending_bottom_containerState createState() =>
      _Spending_bottom_containerState();
}

class _Spending_bottom_containerState extends State<Spending_bottom_container> {
  bool pending_selected = true;
  bool history_selected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 390.w,
      height: 339.h,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 2.0,
              offset: Offset(5, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Colors.grey.shade100),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 0.h),

            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      pending_selected = true;
                      history_selected = false;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 3.h, 0.w, 0.h),

                        child: Text(
                          "Pending",
                          style: pending_selected != true
                              ? TextStyle(color: Colors.grey)
                              : TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      pending_selected != true
                          ? SizedBox(
                              height: 3.w,
                            )
                          : Container(
                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 0.h),

                        width: 50.w,
                        color: kPrimaryColor,
                        height: 4.h,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      pending_selected = false;
                      history_selected = true;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(29.w, 3.h, 0.w, 0.h),
                        child: Text(
                          "History",
                          style: history_selected != true
                              ? TextStyle(color: Colors.grey)
                              : TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      history_selected != true
                          ? SizedBox(
                              height: 1.h,
                            )
                          : Container(
                        margin: EdgeInsets.fromLTRB(29.w, 10.h, 0.w, 0.h),

                        width: 50.w,
                              color: kPrimaryColor,
                              height: 4.h,
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          pending_selected == true ? Pending_listview(size) : Container(),
          history_selected == true ? History_listview(size) : Container()
        ],
      ),
    );
  }
}
