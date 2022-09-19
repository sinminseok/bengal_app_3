import 'package:flutter/material.dart';

Widget Game_Normal_Container(Size size) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      width: size.width * 0.45,
      height: size.height * 0.15,
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jewel Match",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                          width: size.width * 0.03,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(
                            "+0.03 Xper For",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.1,
                    height: size.height * 0.02,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Text(
                          "+1",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )),
                  ),
                ],
              )

            ],
          ),
        ],
      ),
    ),
  );
}
