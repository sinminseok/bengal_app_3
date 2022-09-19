import 'package:flutter/material.dart';
import '../../../types/constants.dart';
import '../popup/Mypage_popup.dart';

Widget Mypage_Account_Widget(Size size,BuildContext context){
  return Center(
    child: Container(
      height: size.height*0.165,
      width: size.width*0.9,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.2,
              child: Stack(
                children: [
                  Container(
                    width: size.width*0.18,

                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                      left: size.width*0.12,
                      top: size.height*0.1,

                      child: Image.asset("assets/images/my_page/edit_icon.png",width: size.width*0.07,))
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height*0.06,),
              Text("Guest",style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("boss@google.com",style: TextStyle(color: Colors.grey,fontSize: 12),),
              )
            ],
          ),
          SizedBox(width: size.width*0.07,),
          Column(
            children: [
              SizedBox(height: size.height*0.03,),
              Icon(Icons.settings,color: kPrimaryColor,),
              SizedBox(height: size.height*0.03,),
              InkWell(
                onTap: (){
                  Mypage_popup().showDialog(size, context);
                },
                child: Container(
                  width: size.width*0.136,
                  height: size.height*0.036,
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
