import 'package:bengal_app/pages/lobby/widget/value_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import '../../../types/constants.dart';

class Value_Container extends StatefulWidget {
  String XPER_Value;
  String PER_Value;
  String Charge_Value;

  Value_Container(
      {required this.XPER_Value,
      required this.PER_Value,
      required this.Charge_Value});

  @override
  _Value_ContainerState createState() => _Value_ContainerState();
}

class _Value_ContainerState extends State<Value_Container> {
  bool today_status_bool = false;
  bool total_status_bool = false;
  bool selected_status_bool = false;

  @override
  void initState() {
    // TODO: implement initState
    today_status_bool = true;
    total_status_bool = false;
    selected_status_bool = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 5.0,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
            color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              today_status_bool = true;
                              total_status_bool = false;
                              selected_status_bool = false;
                            });
                          },
                          child: Text(
                            "Today's Earn",
                            style: today_status_bool == true
                                ? TextStyle(color: Colors.black)
                                : TextStyle(color: Colors.grey),
                          )),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              today_status_bool = false;
                              total_status_bool = true;
                              selected_status_bool = false;
                            });
                          },
                          child: Text(
                            "Total Status",
                            style: total_status_bool == true
                                ? TextStyle(color: Colors.black)
                                : TextStyle(color: Colors.grey),
                          )),
                    ),
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              today_status_bool = false;
                              total_status_bool = false;
                              selected_status_bool = true;
                            });
                          },
                          child: Text(
                            "Selected Car",
                            style: selected_status_bool == true
                                ? TextStyle(color: Colors.black)
                                : TextStyle(color: Colors.grey),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            today_status_bool != true
                ? Container()
                : Container(
                    width: size.width * 0.87,
                    height: size.height * 0.12,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                  height: size.height * 0.04,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("XPER"),
                                          SizedBox(
                                            width: size.width * 0.2,
                                          ),
                                          Text(
                                            "${widget.XPER_Value}/200",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      LinearPercentIndicator(
                                        barRadius: Radius.circular(10),
                                        width: size.width * 0.4,
                                        lineHeight: 3.0,
                                        percent: 0.9,
                                        progressColor: Colors.grey,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/lobby/icons/appbar_icons/per_icon.png",
                                  height: size.height * 0.04,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "PER",
                                            style: TextStyle(
                                                color: Colors.orange.shade700),
                                          ),
                                          SizedBox(
                                            width: size.width * 0.2,
                                          ),
                                          Text(
                                            "${widget.PER_Value}/2.0",
                                            style: TextStyle(color: kPerColor),
                                          )
                                        ],
                                      ),
                                      LinearPercentIndicator(
                                        barRadius: Radius.circular(10),
                                        width: size.width * 0.4,
                                        lineHeight: 3.0,
                                        percent: 0.9,
                                        progressColor: Color(0xffe8ad09),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                FAProgressBar(
                                  backgroundColor: Colors.grey.shade300,
                                  maxValue: 16,
                                  borderRadius: BorderRadius.circular(30),
                                  verticalDirection: VerticalDirection.up,
                                  progressColor: kCharColor,
                                  direction: Axis.vertical,
                                  currentValue: 13,
                                  displayText: null,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Center(
                                      child: Image.asset(
                                    "assets/images/lobby/lightning.png",
                                    width: size.width * 0.04,
                                  )),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "${widget.Charge_Value}/16.0",
                                  style: TextStyle(
                                    color: kCharColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Next Charge",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Text(
                                  "4h 59m",
                                  style: TextStyle(
                                    color: kCharColor,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
            total_status_bool != true
                ? Container()
                : Container(
                    width: size.width * 0.82,
                    height: size.height * 0.12,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Value_Detail_Widget(
                                "gauge_icon", "Speed", "21.8", "10.0", size),
                            Value_Detail_Widget(
                                "dice_icon", "Luck", "21.8", "10.0", size)
                          ],
                        ),
                        Row(
                          children: [
                            Value_Detail_Widget(
                                "charge_icon", "Charge", "21.8", "10.0", size),
                            Value_Detail_Widget(
                                "repair_icon", "Repair", "21.8", "10.0", size)
                          ],
                        ),
                      ],
                    ),
                  ),
            selected_status_bool != true
                ? Container()
                : Container(
                    width: size.width * 0.82,
                    height: size.height * 0.12,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Value_Detail_Widget(
                                "gauge_icon", "Speed", "21.8", "10.0", size),
                            Value_Detail_Widget(
                                "dice_icon", "Luck", "21.8", "10.0", size)
                          ],
                        ),
                        Row(
                          children: [
                            Value_Detail_Widget(
                                "charge_icon", "Charge", "21.8", "10.0", size),
                            Value_Detail_Widget(
                                "repair_icon", "Repair", "21.8", "10.0", size)
                          ],
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
