import 'package:flutter/material.dart';
import '../../../types/constants.dart';

class Selected_box_popup {


  void showDialog(Size size, BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: Colors.black),
              child: Container(
                  width: size.width * 0.76,
                  height: size.height * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: size.width * 0.76,
                        height: size.height * 0.08,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: kPrimaryColor),
                        child: Center(
                            child: Text(
                          "Lv5,Specical Box",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                      ),
                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      Image.asset("assets/images/lobby/boxes/ready_box.png"),
                      Text(
                        "Reamaing Time",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "01:23:59",
                          style: TextStyle(color: kPrimaryColor, fontSize: 18),
                        ),
                      ),
                      Container(
                        width: size.width * 0.6,
                        height: size.height * 0.1,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.02),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Base Cost",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                  Text(
                                    "30.00",
                                    style: TextStyle(
                                        color: kPrimaryColor, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Base Cost",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 13),
                                  ),
                                  Text(
                                    "30.00",
                                    style: TextStyle(
                                        color: kPrimaryColor, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.6,
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                            border: Border.all(color: kPrimaryColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "30.00",
                                style: TextStyle(
                                    color: kPrimaryColor, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          showDialog2(size, context);
                        },
                        child: Container(
                          width: size.width * 0.43,
                          height: size.height * 0.055,
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                          child: Center(
                            child: Text(
                              "Boost",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          );
        });
  }

  void showDialog2(Size size, BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: Colors.black),
              child: Container(
                  width: size.width * 0.76,
                  height: size.height * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: size.width * 0.76,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: kPrimaryColor),
                        child: Center(
                            child: Text(
                          "SPECIAL BOX BOOST",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              "Boost Cost",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.2,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.7,
                          height: size.height * 0.1,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0, right: 10.0),
                                child: Image.asset(
                                  "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                  width: size.width * 0.06,
                                ),
                              ),
                              Text(
                                "XPER",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: size.width * 0.3,
                              ),
                              Text(
                                "12.91",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Do you want to proceed with the boost?",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(height: size.height*0.03,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: size.width * 0.3,
                              height: size.height * 0.055,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35)),
                                  border: Border.all(color: kPrimaryColor)),
                              child: Center(
                                child: Text(
                                  "No",
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: size.width * 0.3,
                              height: size.height * 0.055,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                              ),
                              child: Center(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          );
        });
  }
}
