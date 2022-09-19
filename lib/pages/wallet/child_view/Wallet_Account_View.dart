import 'package:flutter/material.dart';
import '../../../types/constants.dart';
import '../popup/address_popup.dart';

Widget Wallet_Account_View(BuildContext context,Size size, String address, double xper_value,double per_value,double hvh_value,double usdc_value,int car_count,int car_boxes_count) {
  return SingleChildScrollView(
    child: Column(
      children: [
        InkWell(
          onTap: (){
            Address_popup().showDialog(size, context);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 1.3),
            child: Container(
              height: size.height * 0.084,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: size.width*0.01,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.013,
                      ),
                      Text(
                        "Address",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      Text(
                        "$address",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.4,
                  ),
                  Text(
                    "Detailed",
                    style: TextStyle(
                      fontSize: 13,
                      color: kPrimaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: size.width * 0.9,
          height: size.height * 0.4,
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
                        "$per_value",
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
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 1.3),
                child: Container(
                  height: size.height * 0.084,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/wallet/icons/usdc_icon.png",
                        width: size.width * 0.08,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "USDC",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.47,
                      ),
                      Text(
                        "$usdc_value",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 1.3),
          child: Container(
            height: size.height * 0.084,
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/wallet/icons/car_icon.png",
                  width: size.width * 0.08,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Cars",
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
                  "$car_count",
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
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/wallet/icons/box_icon.png",
                  width: size.width * 0.08,
                ),
                Text(
                  "Car Boxes",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(
                  width: size.width * 0.42,
                ),
                Text(
                  "$car_boxes_count",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/wallet/ToSpending_button.png",
                width: size.width * 0.28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/wallet/Trade_button.png",
                width: size.width * 0.28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/wallet/ToExternal_button.png",
                width: size.width * 0.28,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
