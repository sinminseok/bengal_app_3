

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/constants.dart';
import '../widget/Drawer_widget.dart';
import '../widget/drawer/Car_Info_Widget.dart';

class Trade_Drawer extends StatefulWidget {

  Trade_Drawer({Key? key}) : super(key: key);

  @override
  _Trade_Drawer createState() => _Trade_Drawer();
}

class _Trade_Drawer extends State<Trade_Drawer> {

  bool change = false;
  bool cars_ontap = false;
  bool boxs_ontap = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
        child: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 50.h,
                left: -40.w,


                  child: Image.asset("assets/images/common/cancel_button.png",width: 40.w,height: 40.h,)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 60.h, 15.w, 19.h),

                    child: Text(
                      "Token Select",
                      style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: size.width * 0.8,
                    height: size.height * 0.002,
                    color: Colors.grey.shade300,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Token_Bar()
                  ),

                ],
              ),
            ],
          )
        ));
  }
}
