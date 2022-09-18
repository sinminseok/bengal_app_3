import 'package:bengal_app/pages/lobby/widget/Box_Container.dart';
import 'package:bengal_app/pages/lobby/widget/Car_Main_Widget.dart';
import 'package:bengal_app/pages/lobby/widget/Game_play_Widget.dart';
import 'package:bengal_app/pages/lobby/widget/Value_Container.dart';
import 'package:flutter/material.dart';
import '../../types/constants.dart';

class Lobby_View extends StatefulWidget {
  const Lobby_View({Key? key}) : super(key: key);

  @override
  _Lobby_ViewState createState() => _Lobby_ViewState();
}

class _Lobby_ViewState extends State<Lobby_View> {
  bool current_car = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kAppbarColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            //Buy a car Widget
            current_car == true
                ? InkWell(
                    onTap: () {
                      // setState(() {
                      //   current_car = !current_car;
                      // });
                    },
                    child: Car_Main_Widget(context,size,10,123123,45.4,5000,"Fine"),
                  )
                : InkWell(
                    onTap: () {
                      setState(() {
                        current_car = !current_car;
                      });
                    },
                    child: Container(
                      width: size.width,
                      height: size.height * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 0,
                            blurRadius: 5.0,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                                width: size.width * 0.93,
                                height: size.height * 0.28,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50.0),
                                child: Center(
                                    child: Image.asset(
                                  "assets/images/lobby/car_empty_img.png",
                                  width: size.width * 0.7,
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: size.width * 0.26,
                                    ),
                                    Image.asset(
                                      "assets/images/lobby/icons/plus_icon_3.png",
                                      width: size.width * 0.07,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Buy a car and enjoy the game",
                                        style: TextStyle(fontSize: 12.3),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

            //XPER Value,Per Value,Charge Value
            Value_Container(
              XPER_Value: '70',
              PER_Value: '0.32',
              Charge_Value: '12.0',
            ),

            BoxContainer_Widget(),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.07,
                ),
                Text("Game Play"),
                SizedBox(
                  width: size.width * 0.6,
                ),
                InkWell(
                    onTap: () {
                      print("move");
                    },
                    child: Text(
                      "All",
                      style: TextStyle(fontSize: 13, color: kPrimaryColor),
                    ))
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.16,
                child: ListView.builder(
                    //사용할 게임수 builder
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext ctx, int idx) {
                      return Game_Play_Widget(
                          size, "Jewel Match", "0.08", "0.05", "10");
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
