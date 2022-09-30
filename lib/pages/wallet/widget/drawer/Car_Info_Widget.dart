

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';

Widget Car_Info_Widet(){
 return  Container(
   margin: EdgeInsets.fromLTRB(3.w, 0.h, 3.w, 0.h),

   child: Column(
     children: [
       Row(
         children: [
           Image.asset(
             "assets/images/common/cars/car1.png",fit: BoxFit.fill,
             width: 104.w,
             height: 60.h,
           ),
           Column(
             crossAxisAlignment:
             CrossAxisAlignment.start,
             children: [
               Container(
                 margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),

                 child: Text(
                   " Sedan/ Normal / Lv7",
                   style: TextStyle(
                     fontSize: 12.sp,
                       color:
                       Colors.grey.shade700,
                       fontWeight:
                       FontWeight.bold),
                 ),
               ),
               Container(
                 margin: EdgeInsets.fromLTRB(10.w, 8.h, 0.w, 0.h),

                 child: Stack(
                   children: [
                     Container(
                       width: 140.w,

                       height:20.h,
                       decoration: BoxDecoration(
                         border: Border.all(color: Colors.grey),
                         borderRadius: BorderRadius.all(
                             Radius.circular(30.0) //         <--- border radius here
                         ),
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Container(
                             // margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),
                             margin: EdgeInsets.fromLTRB(4.w, 0.h, 0.w, 0.h),
                             width:12.w,
                             height: 12.h,
                             decoration: BoxDecoration(
                                 color: Colors.grey.shade500, shape: BoxShape.circle),
                             child: Row(
                               children: [

                                 Container(
                                   margin: EdgeInsets.fromLTRB(2.8.w, 1.3.h, 0.w, 0.h),

                                   child: Text(
                                     "#",
                                     style: TextStyle(color: Colors.white,fontSize: 7),
                                   ),
                                 ),
                               ],
                             ),
                           ),

                           Container(
                             margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                             child: Text(
                               "31233312",
                               style: TextStyle(fontSize: 10),
                             ),
                           )
                         ],
                       ),
                     ),
                     Container(
                         width: 53.w,height: 16.h,
                         margin: EdgeInsets.fromLTRB(84.w, 2.h, 0.w, 0.h),
                         child: Image.asset("assets/images/lobby/icons/limited_button.png",fit: BoxFit.fill,))
                   ],
                 ),
               ),
             ],
           )
         ],
       ),
       Container(
         margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

         width: 280.w,
         height: 1.h,
         color: Colors.grey.shade300,
       ),
     ],
   ),
 );
}