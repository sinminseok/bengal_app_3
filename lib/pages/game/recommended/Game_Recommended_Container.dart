import 'package:flutter/material.dart';

Widget Game_Recommended_Container(Size size) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      width: size.width * 0.9,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jewel Match",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        )
                      ],
                    ),
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
                        SizedBox(
                          width: size.width * 0.05,
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
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
