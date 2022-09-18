import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../types/constants.dart';
import '../frame/widget/Coin_Widget.dart';

class Car_Detail_FrameView extends StatefulWidget {
  const Car_Detail_FrameView({Key? key}) : super(key: key);

  @override
  _Car_Detail_FrameView createState() => _Car_Detail_FrameView();
}

class _Car_Detail_FrameView extends State<Car_Detail_FrameView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        toolbarHeight: size.height * 0.082,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.19,
              ),
              Coin_Widget("xper_icon", "0.00", size),
              Coin_Widget("per_icon", "0.00", size),
              Coin_Widget("havah_icon", "0.00", size),
              Image.asset(
                "assets/images/lobby/icons/appbar_icons/btn_wallet.png",
                width: size.width * 0.083,
              )
            ],
          ),
        ),
      ),
//BorderRadius.only(topLeft:Radius.circular(10))
      body: Column(
        children: [
          Container(
            width: size.width * 1,
            height: size.height * 0.05,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: kPrimaryColor),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/common/cars/car_appbar_icon.png",
                    width: size.width * 0.13,
                  ),
                ),
                const Text(
                  "SPORTS/EPIC+",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: size.width * 0.3,
                ),
                const Text(
                  "Lv 12/30  Mint:0",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Image.asset(
                  "assets/images/common/cars/car1.png",
                  height: size.height * 0.3,
                  width: size.width * 1,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Lv 1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Image.asset(
                        "assets/images/lobby/icons/circle_icon.png",
                        width: size.width * 0.05,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "13123",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/lobby/icons/limited_button.png",
                          width: size.width * 0.2,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: SizedBox(
                      width: size.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/images/common/cars/icons/lock_icon.png",
                            width: size.width * 0.14,
                          ),
                          Image.asset(
                            "assets/images/common/cars/icons/empty_icon.png",
                            width: size.width * 0.14,
                          ),
                          Image.asset(
                            "assets/images/common/cars/icons/ruby_icon.png",
                            width: size.width * 0.14,
                          ),
                          Image.asset(
                            "assets/images/common/cars/icons/lock2_icon.png",
                            width: size.width * 0.14,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                      LinearPercentIndicator(
                        center: const Text(
                          "Durability 45.50%",
                          style: TextStyle(color: Colors.white),
                        ),
                        barRadius: const Radius.circular(10),
                        width: size.width * 0.8,
                        lineHeight: size.height * 0.03,
                        percent: 0.9,
                        progressColor: Colors.teal,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                      LinearPercentIndicator(
                        barRadius: const Radius.circular(10),
                        width: size.width * 0.6,
                        lineHeight: size.height * 0.01,
                        percent: 0.9,
                        progressColor: Colors.teal,
                      ),
                      const Text(
                        "1333 km(31)",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text("Status"),
                Container(
                  width: size.width * 0.17,
                  height: size.height * 0.04,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      color: Colors.greenAccent.shade100),
                  child: const Center(
                      child: Text(
                    "+4.0",
                    style: TextStyle(color: Colors.green),
                  )),
                ),
                Container(
                  width: size.width * 0.4,
                  height: size.height * 0.04,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      color: Colors.greenAccent.shade100),
                  child: const Center(
                      child: Text(
                    "+4.0",
                    style: TextStyle(color: Colors.green),
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.11,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                        color: Colors.grey.shade200),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Image.asset(
                          "assets/images/common/cars/icons/speed_icon.png",
                          width: size.width * 0.08,
                        ),
                        const Text("21.8"),
                        const Text(
                          "Speed",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.11,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                        color: Colors.grey.shade200),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Image.asset(
                          "assets/images/common/cars/icons/speed_icon.png",
                          width: size.width * 0.08,
                        ),
                        const Text("21.8"),
                        const Text(
                          "Speed",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.11,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                        color: Colors.grey.shade200),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Image.asset(
                          "assets/images/common/cars/icons/speed_icon.png",
                          width: size.width * 0.08,
                        ),
                        const Text("21.8"),
                        const Text(
                          "Speed",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.11,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                        color: Colors.grey.shade200),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Image.asset(
                          "assets/images/common/cars/icons/speed_icon.png",
                          width: size.width * 0.08,
                        ),
                        const Text("21.8"),
                        const Text(
                          "Speed",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width * 0.9,
            height: size.height * 0.1,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.grey.shade200),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/common/cars/icons/question_mark.png",
                    width: size.width * 0.08,
                  ),
                ),
                const Text(
                  "Mint Information",
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: size.width * 0.17,
                ),
                Container(
                  width: size.width * 0.3,
                  height: size.height * 0.06,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: kPrimaryColor),
                  child: const Center(
                      child: Text(
                    "View",
                    style: TextStyle(color: Colors.white),
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
