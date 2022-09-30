import 'package:bengal_app/pages/my_page/child_view/Mypage_edit_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../../../types/constants.dart';
import '../popup/Mypage_popup.dart';

Widget Mypage_Account_Widget(Size size,BuildContext context){
  return Center(
    child: Container(
      height:110.h,
      width: 360.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(17.w, 0.h, 0.w, 0.h),

                width: 80.w,
                height: 80.h,
                child: Stack(
                  children: [
                    Container(
                      width: 76.w,

                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                        left: 52.06.w,
                        top: 53.h,

                        child: InkWell(
                            onTap: (){

                            },
                            child: Image.asset("assets/images/my_page/edit_icon.png",width: 24.w,)))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(17.w, 31.h, 0.w, 0.h),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Guest",style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("boss@google.com",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ],
                ),
              ),
            ],
          ),


          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          child: MyPage_Edit_View(

                          )));
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(0.w, 16.h, 15.w, 0.h),



                    child: Icon(Icons.settings,color: kPrimaryColor,)),
              ),

              InkWell(
                onTap: (){
                  Mypage_popup().showDialog(size, context);
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.w, 36.h, 15.w, 0.h),



                  width: 75.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Center(
                    child: Text("Logout",style: TextStyle(color: kPrimaryColor,fontSize: 11),),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
