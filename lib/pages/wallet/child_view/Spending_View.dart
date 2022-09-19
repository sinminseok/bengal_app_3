import 'package:flutter/material.dart';
import '../../../types/constants.dart';
import 'Spending_bottom_container.dart';

Widget Spending_View(
    Size size, double xper_value, double per_value, double hvh_value) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        width: size.width * 0.9,
        height: size.height * 0.3,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 1.3),
              child: Container(
                height: size.height * 0.084,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                      width: size.width * 0.08,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "XPER",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.47,
                    ),
                    Text(
                      "$xper_value",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 1.3),
              child: Container(
                height: size.height * 0.084,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: kPerColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/lobby/icons/appbar_icons/per_icon.png",
                      width: size.width * 0.08,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "PER",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kPerColor),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.47,
                    ),
                    Text(
                      "20.323",
                      style: TextStyle(fontSize: 16, color: kPerColor),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 1.3),
              child: Container(
                height: size.height * 0.084,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: kCharColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/lobby/icons/appbar_icons/havah_icon.png",
                      width: size.width * 0.08,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "HVH",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kCharColor),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.47,
                    ),
                    Text(
                      "$hvh_value",
                      style: TextStyle(fontSize: 16, color: kCharColor),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: size.height * 0.03,
      ),
      Image.asset(
        "assets/images/wallet/icons/transfer_button.png",
        width: size.width * 0.4,
      ),
      SizedBox(
        height: size.height * 0.03,
      ),
      Spending_bottom_container()
    ],
  );
}
