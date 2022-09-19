import 'package:flutter/material.dart';
import '../../../types/constants.dart';

Widget Mypage_info_Widget(Size size){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: size.width*0.9,
            height: size.height*0.07,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
              children: [
                SizedBox(width: size.width*0.04,),
                Icon(Icons.person_outline,color: kPrimaryColor,size: 18,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: size.width*0.001,height: size.height*0.05,color: Colors.grey,),
                ),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height*0.014,),
                    Text("USER NAME",style: TextStyle(color: Colors.grey,fontSize: 10),),
                    Text("GUEST")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: size.width*0.9,
            height: size.height*0.07,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
              children: [
                SizedBox(width: size.width*0.04,),
                Icon(Icons.email_outlined,color: kPrimaryColor,size: 17,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: size.width*0.001,height: size.height*0.05,color: Colors.grey,),
                ),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height*0.014,),
                    Text("EMAIL",style: TextStyle(color: Colors.grey,fontSize: 10),),
                    Text("boss@google.com")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: size.width*0.9,
            height: size.height*0.07,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
              children: [
                SizedBox(width: size.width*0.04,),
                Icon(Icons.lock_outline_sharp,color: kPrimaryColor,size: 17,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: size.width*0.001,height: size.height*0.05,color: Colors.grey,),
                ),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height*0.014,),
                    Text("Password",style: TextStyle(color: Colors.grey,fontSize: 10),),
                    Text("****")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
