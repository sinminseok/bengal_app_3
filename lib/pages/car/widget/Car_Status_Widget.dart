import 'package:flutter/material.dart';

Widget Car_Status_Widget(Size size){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Speed Box
          Container(
            width: size.width * 0.2,
            height: size.height * 0.11,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey.shade200),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Image.asset(
                  "assets/images/common/cars/icons/speed_icon.png",
                  width: size.width * 0.06,
                ),
                Text("21.8"),
                Text(
                  "Speed",
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                )
              ],
            ),
          ),
          //Luck box
          Container(
            width: size.width * 0.2,
            height: size.height * 0.11,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey.shade200),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Image.asset(
                  "assets/images/common/cars/icons/dice_icon.png",
                  width: size.width * 0.06,
                ),
                Text("21.8"),
                Text(
                  "Luck",
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                )
              ],
            ),
          ),
          //Charge Box
          Container(
            width: size.width * 0.2,
            height: size.height * 0.11,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey.shade200),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Image.asset(
                  "assets/images/common/cars/icons/charge_icon.png",
                  width: size.width * 0.06,
                ),
                Text("21.8"),
                Text(
                  "Charge",
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                )
              ],
            ),
          ),
          //Repair Box
          Container(
            width: size.width * 0.2,
            height: size.height * 0.11,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey.shade200),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Image.asset(
                  "assets/images/common/cars/icons/repair_icon.png",
                  width: size.width * 0.06,
                ),
                Text("21.8"),
                Text(
                  "Repair",
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );

}
