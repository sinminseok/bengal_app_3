import 'package:bengal_app/types/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_button/group_button.dart';
class Inventory_popup_Type_Widget extends StatefulWidget {

  Inventory_popup_Type_Widget({Key? key}) : super(key: key);

  @override
  _Inventory_popup_Type_Widget createState() => _Inventory_popup_Type_Widget();
}

class _Inventory_popup_Type_Widget extends State<Inventory_popup_Type_Widget> {
  bool SEDAN = false;
  bool SUV = false;
  bool OFF_ROAD = false;
  bool SPORTS = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32.0,bottom: 12,top: 8),
          child: Text("Type"),

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                setState(() {

                  SEDAN = !SEDAN;
                });
              },
              child: Container(
                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color: SEDAN==true?kPrimaryColor:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey.shade300)
                ),
                child: Center(
                  child: Text("SEDAN",style: TextStyle(color: SEDAN==true?Colors.white:Colors.grey,fontSize: 13),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {

                  SUV = !SUV;
                });
              },
              child: Container(

                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color: SUV==true?kPrimaryColor:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey.shade300)
                ),
                child: Center(
                  child: Text("SUV",style: TextStyle(color:SUV==true?Colors.white: Colors.grey,fontSize: 13),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {

                  OFF_ROAD = !OFF_ROAD;
                });
              },
              child: Container(

                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color: OFF_ROAD==true?kPrimaryColor:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey.shade300)
                ),
                child: Center(
                  child: Text("OFF ROAD",style: TextStyle(color: OFF_ROAD==true?Colors.white:Colors.grey,fontSize: 13),),
                ),
              ),
            ),

          ],
        ),
        InkWell(
          onTap: (){
            setState(() {

              SPORTS = !SPORTS;
            });
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(10.w, 10.h, 15.w, 0.h),

            width: 90.w,
            height: 30.h,
            decoration: BoxDecoration(
                color: SPORTS==true?kPrimaryColor:Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Colors.grey.shade300)
            ),
            child: Center(
              child: Text("SPORTS",style: TextStyle(color: SPORTS==true?Colors.white:Colors.grey,fontSize: 13),),
            ),
          ),
        ),
      ],
    );
  }
}




class Inventory_popup_Grade_Widget extends StatefulWidget {

  Inventory_popup_Grade_Widget({Key? key}) : super(key: key);

  @override
  _Inventory_popup_Grade_Widget createState() => _Inventory_popup_Grade_Widget();
}

class _Inventory_popup_Grade_Widget extends State<Inventory_popup_Grade_Widget> {

  bool Normal = false;
  bool Rare = false;
  bool Elite = false;
  bool Epic = false;
  bool Ultimate = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32.0,bottom: 12,top: 18),
          child: Text("Grade"),

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                setState(() {

                  Normal = !Normal;
                });
              },
              child: Container(
                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color: Normal==true?kPrimaryColor:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey.shade300)
                ),
                child: Center(
                  child: Text("Normal",style: TextStyle(color: Normal==true?Colors.white:Colors.grey,fontSize: 13),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {

                  Rare = !Rare;
                });
              },
              child: Container(

                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color: Rare==true?kPrimaryColor:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey.shade300)
                ),
                child: Center(
                  child: Text("Rare",style: TextStyle(color:Rare==true?Colors.white: Colors.grey,fontSize: 13),),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                setState(() {

                  Elite = !Elite;
                });
              },
              child: Container(

                width: 90.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color: Elite==true?kPrimaryColor:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey.shade300)
                ),
                child: Center(
                  child: Text("Elite",style: TextStyle(color: Elite==true?Colors.white:Colors.grey,fontSize: 13),),
                ),
              ),
            ),

          ],
        ),
        Row(

          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10.w, 10.h, 15.w, 0.h),



              child: InkWell(
                onTap: (){
                  setState(() {

                    Epic = !Epic;
                  });
                },
                child: Container(
                  width: 90.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Epic==true?kPrimaryColor:Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border.all(color: Colors.grey.shade300)
                  ),
                  child: Center(
                    child: Text("Epic",style: TextStyle(color: Epic==true?Colors.white:Colors.grey,fontSize: 13),),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),



              child: InkWell(
                onTap: (){
                  setState(() {

                    Ultimate = !Ultimate;
                  });
                },
                child: Container(

                  width: 90.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Ultimate==true?kPrimaryColor:Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border.all(color: Colors.grey.shade300)
                  ),
                  child: Center(
                    child: Text("Ultimate",style: TextStyle(color:Ultimate==true?Colors.white: Colors.grey,fontSize: 13),),
                  ),
                ),
              ),
            ),


          ],
        ),
      ],
    );
  }
}
