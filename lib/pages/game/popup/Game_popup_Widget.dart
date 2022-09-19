import 'package:flutter/material.dart';

Widget Game_popup_Type_Widget(Size size){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 32.0,bottom: 12,top: 8),
        child: Text("Type"),
      ),
      Row(
        children: [
          SizedBox(width: size.width*0.06,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.2,
              height: size.height*0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Center(
                child: Text("SEDAN",style: TextStyle(color: Colors.grey,fontSize: 13),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.2,
              height: size.height*0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Center(
                child: Text("SEDAN",style: TextStyle(color: Colors.grey,fontSize: 13),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.2,
              height: size.height*0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Center(
                child: Text("SEDAN",style: TextStyle(color: Colors.grey,fontSize: 13),),
              ),
            ),
          ),

        ],
      ),
      Row(
        children: [
          SizedBox(width: size.width*0.06,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.2,
              height: size.height*0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Center(
                child: Text("SEDAN",style: TextStyle(color: Colors.grey,fontSize: 13),),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget Game_popup_Grade_Widget(Size size){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 32.0,bottom: 12,top: 8),
        child: Text("Grade"),
      ),
      Row(
        children: [
          SizedBox(width: size.width*0.06,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.2,
              height: size.height*0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Center(
                child: Text("NORMAL",style: TextStyle(color: Colors.grey,fontSize: 13),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.2,
              height: size.height*0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Center(
                child: Text("RARE",style: TextStyle(color: Colors.grey,fontSize: 13),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.2,
              height: size.height*0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Center(
                child: Text("ELITE",style: TextStyle(color: Colors.grey,fontSize: 13),),
              ),
            ),
          ),

        ],
      ),
      Row(
        children: [
          SizedBox(width: size.width*0.06,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.2,
              height: size.height*0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Center(
                child: Text("EPIC",style: TextStyle(color: Colors.grey,fontSize: 13),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: size.width*0.2,
              height: size.height*0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Center(
                child: Text("ULTIMATE",style: TextStyle(color: Colors.grey,fontSize: 13),),
              ),
            ),
          ),
        ],
      ),

    ],
  );
}
