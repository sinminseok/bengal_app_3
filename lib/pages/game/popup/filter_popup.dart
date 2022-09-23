import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';
import 'Game_popup_Widget.dart';
import 'level_thumb_widget.dart';

class Filter_popup {

  void showDialog(Size size, BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
        MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return StatefulBuilder(builder: (context, setState) {
           return AlertDialog(
             contentPadding: EdgeInsets.zero,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15)),
             content: DefaultTextStyle(
               style: TextStyle(fontSize: 16, color: Colors.black),
               child: Container(
                   width: 350.w,
                   height: 600.h,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                   ),
                   child: SingleChildScrollView(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,

                           children: [

                             Container(
                                 margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.h),

                                 child: Text("Filter",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),)),
                             Container(
                                 margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.h),

                                 child: Text("Clear Filter",style: TextStyle(color: kPrimaryColor,fontSize: 12),)),

                           ],
                         ),
                         Container(
                           margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 20.h),

                           width: 350.w,height: 1.h,color: Colors.grey.shade400,),
                         Container(margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 20.h),child: Game_popup_Type_Widget()),
                          Container(
                              margin: EdgeInsets.fromLTRB(0.w, 20.h, 0.w, 20.h),



                              child: Game_popup_Grade_Widget()),

                         Container(
                             margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.h),



                             child: Text("Level",style: TextStyle(color: Colors.grey.shade500,),)),
                         Container(
                             margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 10.h),

                             child: Level_Thumb_Widget()),
                         Container(
                           margin: EdgeInsets.fromLTRB(63.w, 15.h, 15.w, 0.h),



                           child: ElevatedButton(
                             style: ButtonStyle(
                               elevation: MaterialStateProperty.all(0),
                               backgroundColor:
                               MaterialStateProperty.all(Colors.white),
                             ),
                             onPressed: () {
                               Navigator.of(context).pop();
                               // showDialog2(size, context);
                             },
                             child: Container(
                               width: size.width * 0.43,
                               height: size.height * 0.055,
                               decoration: BoxDecoration(
                                   color: kPrimaryColor,
                                   borderRadius:
                                   BorderRadius.all(Radius.circular(35))),
                               child: Center(
                                 child: Text(
                                   "Confirm",
                                   style: TextStyle(color: Colors.white),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   )),
             ),
           );
          });
        });
  }



}
