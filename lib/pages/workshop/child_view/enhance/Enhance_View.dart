import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../inventory/widget/dropdown_button/DropdownButton2.dart';
import 'Enhance_synthesize_View.dart';

class Enhance_View extends StatefulWidget {
  Enhance_View({Key? key}) : super(key: key);

  @override
  _Enhance_View createState() => _Enhance_View();
}

class _Enhance_View extends State<Enhance_View> {

  bool ontap =  false;
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: ontap==true?Enhance_synthesize_View():Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0.w, 178.h, 0.w, 0.h),

            child: InkWell(
              onTap: (){
                print(ontap);
                setState(() {
                  ontap = !ontap;
                });

              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: Container(
                        width: 200.w,
                        height: 200.h,
                        child: Image.asset("assets/images/workshop/enhance_circle.png")),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.w, 50.h, 0.w, 0.h),

                      width: 100.w,
                      height: 100.h,
                      child: Image.asset("assets/images/workshop/enhance_button.png"),
                    ),
                  ),

                  Positioned(
                    left: 145.w,
                    top: -40.h,
                    child: Container(

                      width: 100.w,
                      height: 74.h,
                      child: Image.asset("assets/images/workshop/enhance_emptybox.png",fit: BoxFit.fill,),
                    ),
                  ),
                  Positioned(
                    left: 38.w,
                    top: 45.h,
                    child: Container(

                      width: 100.w,
                      height: 74.h,
                      child: Image.asset("assets/images/workshop/enhance_emptybox.png",fit: BoxFit.fill,),
                    ),
                  ),
                  Positioned(
                    right: 38.w,
                    top: 45.h,
                    child: Container(

                      width: 100.w,
                      height: 74.h,
                      child: Image.asset("assets/images/workshop/enhance_emptybox.png",fit: BoxFit.fill,),
                    ),
                  ),
                  Positioned(
                    right: 64.w,
                    top: 150.h,
                    child: Container(

                      width: 100.w,
                      height: 74.h,
                      child: Image.asset("assets/images/workshop/enhance_emptybox.png",fit: BoxFit.fill,),
                    ),
                  ),
                  Positioned(
                    left: 64.w,
                    top: 150.h,
                    child: Container(

                      width: 100.w,
                      height: 74.h,
                      child: Image.asset("assets/images/workshop/enhance_emptybox.png",fit: BoxFit.fill,),
                    ),
                  ),
                  // Positioned(
                  //   right: -35.w,
                  //   top: 35.h,
                  //   child: Container(
                  //
                  //     width: 100.w,
                  //     height: 74.h,
                  //     child: Image.asset("assets/images/workshop/enhance_emptybox.png"),
                  //   ),
                  // ),
                  // Positioned(
                  //   right: -15.w,
                  //   bottom: -25.h,
                  //   child: Container(
                  //
                  //     width: 100.w,
                  //     height: 74.h,
                  //     child: Image.asset("assets/images/workshop/enhance_emptybox.png"),
                  //   ),
                  // ),
                  // Positioned(
                  //   left: -15.w,
                  //   bottom: -25.h,
                  //   child: Container(
                  //
                  //     width: 100.w,
                  //     height: 74.h,
                  //     child: Image.asset("assets/images/workshop/enhance_emptybox.png"),
                  //   ),
                  // ),


                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
