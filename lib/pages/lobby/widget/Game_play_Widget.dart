import 'package:flutter/material.dart';
import '../../../types/constants.dart';

Widget Game_Play_Widget(Size size,String title,String xper_value,String per_value,String ultimate_value){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: size.width * 0.88,
      height: size.height * 0.16,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kPrimaryColor),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Image.asset(
              "assets/images/lobby/game_img.png",
              height: size.height * 0.09,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text("$title"),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                      width: size.width * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "+ $xper_value",
                        style: TextStyle(
                            fontSize: 11,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image.asset(
                      "assets/images/lobby/icons/appbar_icons/per_icon.png",
                      width: size.width * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("+ $per_value",
                          style: TextStyle(
                              fontSize: 11,
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.28,
                        height: size.height * 0.03,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius:
                            BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 2),
                          child: Text(
                            "Ultimate  Lv $ultimate_value",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: size.width*0.15,),
          Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Image.asset(
              "assets/images/lobby/game_play_button.png",
              height: size.height * 0.08,
            ),
          ),
        ],
      ),
    ),
  );
}
