

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';

Widget Car_Info_Widet(){
 return  Container(
   margin: EdgeInsets.fromLTRB(3.w, 10.h, 3.w, 0.h),

   child: Column(
     children: [
       Row(
         children: [
           Image.asset(
             "assets/images/common/cars/car1.png",
             width: 104.w,
             height: 65.h,
           ),
           Column(
             crossAxisAlignment:
             CrossAxisAlignment.start,
             children: [
               Text(
                 " Sedan/ Normal / Lv7",
                 style: TextStyle(
                     color:
                     Colors.grey.shade700,
                     fontWeight:
                     FontWeight.bold),
               ),
               Container(
                 margin: EdgeInsets.fromLTRB(1.w, 20.h, 15.w, 0.h),

                 child: Stack(
                   children: [
                     Container(
                       width: 140.w,

                       height:24.h,
                       decoration: BoxDecoration(
                         border: Border.all(color: Colors.grey),
                         borderRadius: BorderRadius.all(
                             Radius.circular(30.0) //         <--- border radius here
                         ),
                       ),
                       child: Row(
                         children: [
                           Container(
                             width:24.w,
                             height: 17.h,
                             decoration: BoxDecoration(
                                 color: Colors.grey.shade500, shape: BoxShape.circle),
                             child: Row(
                               children: [

                                 Container(
                                   margin: EdgeInsets.fromLTRB(8.5.w, 1.h, 0.w, 0.h),

                                   child: Text(
                                     "#",
                                     style: TextStyle(color: Colors.white,fontSize: 10),
                                   ),
                                 ),
                               ],
                             ),
                           ),

                           Text(
                             "nftid",
                             style: TextStyle(fontSize: 12),
                           )
                         ],
                       ),
                     ),
                     Positioned(
                         left: 84.w,
                         child: Image.asset("assets/images/lobby/icons/limited_button.png",width: 56.w,))
                   ],
                 ),
               ),
             ],
           )
         ],
       ),
       Container(
         margin: EdgeInsets.fromLTRB(15.w, 24.h, 15.w, 0.h),

         width: 280.w,
         height: 1.h,
         color: Colors.grey.shade400,
       ),
     ],
   ),
 );
}