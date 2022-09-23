
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../types/constants.dart';
import '../child_view/transfer/Transfer_View.dart';

class Wallet_Transfer_password_Widget extends StatefulWidget {
  const Wallet_Transfer_password_Widget({Key? key}) : super(key: key);

  @override
  _Wallet_Transfer_password_WidgetState createState() =>
      _Wallet_Transfer_password_WidgetState();
}

class _Wallet_Transfer_password_WidgetState
    extends State<Wallet_Transfer_password_Widget> {
  TextEditingController _password = TextEditingController();

  List<int> passwor_list = [];

  @override
  Widget build(BuildContext context) {
    bool circle_1 =
    _password.text.length.toInt() > 0 && _password.text.length.toInt() < 7
        ? true
        : false;
    bool circle_2 =
    _password.text.length.toInt() > 1 && _password.text.length.toInt() < 7
        ? true
        : false;
    bool circle_3 =
    _password.text.length.toInt() > 2 && _password.text.length.toInt() < 7
        ? true
        : false;
    bool circle_4 =
    _password.text.length.toInt() > 3 && _password.text.length.toInt() < 7
        ? true
        : false;
    bool circle_5 =
    _password.text.length.toInt() > 4 && _password.text.length.toInt() < 7
        ? true
        : false;
    bool circle_6 =
    _password.text.length.toInt() > 5 && _password.text.length.toInt() < 7
        ? true
        : false;

    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SizedBox(
              width: size.width * 0.265,
            ),
            Container(
              width: size.width * 0.6,
              height: size.height * 0.06,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  circle_1 == true
                      ? Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: kPrimaryColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                  circle_2 == true
                      ? Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: kPrimaryColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                  circle_3 == true
                      ? Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: kPrimaryColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                  circle_4 == true
                      ? Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: kPrimaryColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                  circle_5 == true
                      ? Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: kPrimaryColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                  circle_6 == true
                      ? Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: size.width * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: kPrimaryColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          width: size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: Container(
                  width: size.width * 0.15,
                  height: size.height * 0.125,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: InkWell(
                      onTap: () {
                        if (_password.text.length.toInt() < 6) {
                          setState(() {
                            _password.text = _password.text + "1";
                          });
                        }
                      },
                      child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))),
                ),
              ),
              InkWell(
                child: Container(
                  width: size.width * 0.15,
                  height: size.height * 0.125,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: InkWell(
                      onTap: () {
                        if (_password.text.length.toInt() < 6) {
                          setState(() {
                            _password.text = _password.text + "2";
                          });
                        }
                      },
                      child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))),
                ),
              ),
              InkWell(
                child: Container(
                  width: size.width * 0.15,
                  height: size.height * 0.125,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: InkWell(
                      onTap: () {
                        if (_password.text.length.toInt() < 6) {
                          setState(() {
                            _password.text = _password.text + "3";
                          });
                        }
                      },
                      child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: size.width * 0.15,
                height: size.height * 0.125,
                decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "4";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                        "4",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Container(
                width: size.width * 0.15,
                height: size.height * 0.125,
                decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "5";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                        "5",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Container(
                width: size.width * 0.15,
                height: size.height * 0.125,
                decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "6";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                        "6",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: size.width * 0.15,
                height: size.height * 0.125,
                decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "7";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                        "7",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Container(
                width: size.width * 0.15,
                height: size.height * 0.125,
                decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "8";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                        "8",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Container(
                width: size.width * 0.15,
                height: size.height * 0.125,
                decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    if (_password.text.length.toInt() < 6) {
                      setState(() {
                        _password.text = _password.text + "9";
                      });
                    }
                  },
                  child: Center(
                      child: Text(
                        "9",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: size.width * 0.15,
                height: size.height * 0.125,
                decoration:
                BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
                child: Center(
                    child: Text(
                      "0",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              InkWell(
                onTap: () {
                  if (_password.text.length.toInt() < 6) {
                    setState(() {
                      _password.text = _password.text + "0";
                    });
                  }
                },
                child: Container(
                  width: size.width * 0.15,
                  height: size.height * 0.125,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Container(
                width: size.width * 0.15,
                height: size.height * 0.125,
                decoration:
                BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () {
                    // print(_password.text.length.toInt());

                    setState(() {
                      if (_password.text.length.toInt() > 0) {
                        _password.text = _password.text
                            .toString()
                            .substring(0, _password.text.length.toInt() - 1);
                      } else {
                        return;
                      }
                    });
                  },
                  child: Center(
                    child: Icon(
                      Icons.backspace_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "FORGOT PASSWORD",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        InkWell(
          onTap: (){
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    child: Transfer_View(
                    )));
          },
          child: Container(
            width: size.width * 0.35,
            height: size.height * 0.06,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Center(
                child: Text(
                  "CONFIRM",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }
}