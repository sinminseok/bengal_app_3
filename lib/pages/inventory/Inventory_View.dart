import 'package:bengal_app/pages/inventory/widget/carboxes/Inventory_CarBoxes_View.dart';
import 'package:bengal_app/pages/inventory/widget/cars/Inventory_cars_View.dart';
import 'package:bengal_app/pages/inventory/widget/dropdown_button/DropdownButton2.dart';
import 'package:flutter/material.dart';
import '../../types/constants.dart';

class Inventory_View extends StatefulWidget {
  const Inventory_View({Key? key}) : super(key: key);

  @override
  _Inventory_ViewState createState() => _Inventory_ViewState();
}

class _Inventory_ViewState extends State<Inventory_View> {
  bool Cars_selected = true;
  bool Car_Boxes_selected = false;
  bool Gems_selected = false;
  bool Others_selected = false;

  final List<String> items = [
    'Lowest Level',
    'Highest Level',
    'Lastest',
  ];
  String? selectedValue = "Lowest Level";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Selected_Bar
            Container(
              width: size.width * 1,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Cars_selected = true;
                              Car_Boxes_selected = false;
                              Gems_selected = false;
                              Others_selected = false;
                            });
                          },
                          child: Container(
                            width: size.width * 0.2,
                            height: size.height * 0.065,
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
                                color: Cars_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Cars",
                                style: TextStyle(
                                    color: Cars_selected != true
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
                              Cars_selected = false;
                              Car_Boxes_selected = true;
                              Gems_selected = false;
                              Others_selected = false;
                            });
                          },
                          child: Container(
                            width: size.width * 0.2,
                            height: size.height * 0.065,
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
                                color: Car_Boxes_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Car Boxes",
                                style: TextStyle(
                                    color: Car_Boxes_selected != true
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
                              Cars_selected = false;
                              Car_Boxes_selected = false;
                              Gems_selected = true;
                              Others_selected = false;
                            });
                          },
                          child: Container(
                            width: size.width * 0.2,
                            height: size.height * 0.065,
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
                                color: Gems_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Gems",
                                style: TextStyle(
                                    color: Gems_selected != true
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
                              Cars_selected = false;
                              Car_Boxes_selected = false;
                              Gems_selected = false;
                              Others_selected = true;
                            });
                          },
                          child: Container(
                            width: size.width * 0.2,
                            height: size.height * 0.065,
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
                                color: Others_selected != true
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                "Others",
                                style: TextStyle(
                                    color: Others_selected != true
                                        ? Colors.grey
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomDropdownButton2(
                          hint: 'Lowest Level',
                          dropdownItems: items,
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.45,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/inventory/filter.png",
                            height: size.height * 0.05,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Cars_selected==true?Inventory_Cars_View(size):Container(),
            Car_Boxes_selected==true?Inventory_CarBoxes_View(size):Container(),
            Gems_selected==true?Inventory_Cars_View(size):Container(),
            Others_selected==true?Inventory_Cars_View(size):Container(),


          ],
        ),
      ),
    );
  }
}
