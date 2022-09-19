import 'package:flutter/material.dart';

import '../../types/constants.dart';

class Workshop_View extends StatefulWidget {
  const Workshop_View({Key? key}) : super(key: key);

  @override
  _Workshop_ViewState createState() => _Workshop_ViewState();
}

class _Workshop_ViewState extends State<Workshop_View> {
  bool Mint_selected = true;
  bool Enhance_selected = false;
  bool GemUpgrade_selected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
              width: size.width * 1,
              height: size.height * 0.09,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.06,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Mint_selected = true;
                              Enhance_selected = false;
                              GemUpgrade_selected = false;
                            });
                          },
                          child: Container(
                            width: size.width * 0.25,
                            height: size.height * 0.055,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                                color: Mint_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Mint",
                                style: TextStyle(
                                    color: Mint_selected != true
                                        ? Colors.grey
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Mint_selected = false;
                              Enhance_selected = true;
                              GemUpgrade_selected = false;
                            });
                          },
                          child: Container(
                            width: size.width * 0.25,
                            height: size.height * 0.055,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                                color: Enhance_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Enhance",
                                style: TextStyle(
                                    color: Enhance_selected != true
                                        ? Colors.grey
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Mint_selected = false;
                              Enhance_selected = false;
                              GemUpgrade_selected = true;
                            });
                          },
                          child: Container(
                            width: size.width * 0.25,
                            height: size.height * 0.055,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                                color: GemUpgrade_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Gem Upgrade",
                                style: TextStyle(
                                    color: GemUpgrade_selected != true
                                        ? Colors.grey
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          SizedBox(height: size.height*0.15,),
          Row(
            children: [
              SizedBox(
                width: size.width * 0.05,
              ),
              InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/images/workshop/empty_plus.png",
                    width: size.width * 0.4,
                  )),
              SizedBox(
                width: size.width * 0.1,
              ),
              InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/images/workshop/empty_plus.png",
                    width: size.width * 0.4,
                  )),
            ],
          ),
          Image.asset(
            "assets/images/workshop/sub_machine.png",
            width: size.width * 0.6,
          ),
          Text("Select a Car for Minting")
        ],
      ),
    );
  }
}
