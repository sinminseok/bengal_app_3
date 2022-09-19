import 'package:flutter/material.dart';
import '../../../types/constants.dart';

Widget Game_Special_Container(Size size){
  return  Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      width: size.width * 0.9,
      height: size.height * 0.2943,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/game/game_img.png",
                  width: size.width * 0.17,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jewel Match",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                          width: size.width * 0.05,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "+0.03 XPER For 1 Power",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/per_icon.png",
                          width: size.width * 0.05,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "+0.03 PER For 1 Power",
                            style:
                            TextStyle(color: kPerColor, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text(
                  "Until datetime",
                  style: TextStyle(color: kPrimaryColor, fontSize: 13),
                ),
              )
            ],
          ),
          Container(
            width: size.width * 0.85,
            height: size.height * 0.001,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: size.width * 0.25,
                  height: size.height * 0.03,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius:
                      BorderRadius.all(Radius.circular(10))),
                  child: Center(
                      child: Text(
                        "Normal  lv10",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/game/icons/car1.png",
                      width: size.width * 0.08,
                    ),
                    Image.asset(
                      "assets/images/game/icons/car2.png",
                      width: size.width * 0.08,
                    ),
                    Image.asset(
                      "assets/images/game/icons/car3.png",
                      width: size.width * 0.08,
                    ),
                    Image.asset(
                      "assets/images/game/icons/car4.png",
                      width: size.width * 0.08,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: size.width * 0.9,
            height: size.height * 0.001,
            color: Colors.grey.shade300,
          ),
          Container(
            width: size.width * 0.9,
            height: size.height * 0.1,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.grey.shade300),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0,left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mine",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                      Text(
                        "(Max 1.0 Per / 1Day)",
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade800),
                      )
                    ],
                  ),
                ),
                SizedBox(width: size.width*0.25,),
                Image.asset(
                  "assets/images/lobby/icons/appbar_icons/per_icon.png",
                  width: size.width * 0.07,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "999,1010",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
