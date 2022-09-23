import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';

Widget Mypage_info_Widget(Size size){
  return Column(
    children: [
      Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 5.h),

          width: 360.w,
          height: 60.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            children: [

              Container(
                  margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                  child: Icon(Icons.person_outline,color: kPrimaryColor,size: 18,)),
              Container(width: size.width*0.001,height: size.height*0.05,color: Colors.grey,),

              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                      margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                      child: Text("USER NAME",style: TextStyle(color: Colors.grey,fontSize: 10),)),
                  Container(
                      margin: EdgeInsets.fromLTRB(13.w, 1.h, 15.w, 0.h),

                      child: Text("GUEST"))
                ],
              )
            ],
          ),
        ),
      ),
      Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 5.h),

          width: 360.w,
          height: 60.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            children: [

              Container(
                  margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                  child: Icon(Icons.email_outlined,color: kPrimaryColor,size: 18,)),
              Container(width: size.width*0.001,height: size.height*0.05,color: Colors.grey,),

              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                      margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                      child: Text("EMAIL",style: TextStyle(color: Colors.grey,fontSize: 10),)),
                  Container(
                      margin: EdgeInsets.fromLTRB(13.w, 1.h, 15.w, 0.h),

                      child: Text("sinminseok12@naber.com"))
                ],
              )
            ],
          ),
        ),
      ),
      Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 5.h),

          width: 360.w,
          height: 60.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Row(
            children: [

              Container(
                  margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                  child: Icon(Icons.lock_outline_sharp,color: kPrimaryColor,size: 18,)),
              Container(width: size.width*0.001,height: size.height*0.05,color: Colors.grey,),

              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                      margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                      child: Text("PASSWORD",style: TextStyle(color: Colors.grey,fontSize: 10),)),
                  Container(
                      margin: EdgeInsets.fromLTRB(13.w, 1.h, 15.w, 0.h),

                      child: Text("****"))
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}
