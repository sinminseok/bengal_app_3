import 'package:flutter/material.dart';

Widget Coin_Widget(String img_name,String value,Size size){
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          children: [
            Stack(
              children: [
                // Container(
                //   width:20,
                //
                //   margin: EdgeInsets.all(1.0),
                //   decoration: BoxDecoration(
                //
                //       color: Colors.black,
                //       shape: BoxShape.circle
                //   ),
                // ),
                Image.asset("assets/images/lobby/icons/appbar_icons/$img_name.png",width: size.width*0.055,)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text("$value",style: TextStyle(fontSize: 12,color: Colors.black),),
            )


          ],
        ),
      )
    ],
  );
}
