import 'package:bengal_app/pages/game/popup/filter_popup.dart';
import 'package:bengal_app/pages/game/recommended/Game_Recommended_View.dart';
import 'package:bengal_app/pages/game/special/Game_Special_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../models/test_viewmodel.dart';
import '../../types/constants.dart';
import '../inventory/widget/dropdown_button/DropdownButton2.dart';
import 'normal/Game_Normal_View.dart';

class Game_View extends StatefulWidget {
  BuildContext frame_context;

  Game_View({Key? key, required this.frame_context}) : super(key: key);

  @override
  _Game_ViewState createState() => _Game_ViewState();
}

class _Game_ViewState extends State<Game_View> {
  bool Special_selected = true;
  bool Recommended_selected = false;
  bool Normal_selected = false;
  bool animation = false;

  final List<String> items = [
    'Lowest Level',
    'Highest Level',
    'Lastest',
  ];
  String? selectedValue = "Lowest Level";
  double _height_animtaion = 200;
  updateState() {
    setState(() {
      _height_animtaion = 300;
    });
  }
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Selected_Bar
            Container(
                width: size.width * 1,
                height: 105.h,
                decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey.shade300)),
                ),
                child: Column(
                  children: [
                    Container(
                      margin:EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          InkWell(
                            onTap: () {
                              setState(() {
                                Special_selected = true;
                                Recommended_selected = false;
                                Normal_selected = false;
                              });
                            },
                            child: Container(
                              width: 116.w,
                              height: 35.h,
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
                                  color: Special_selected != true
                                      ? Colors.white
                                      : kPrimaryColor,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  "Special",
                                  style: TextStyle(
                                      color: Special_selected != true
                                          ? Colors.grey
                                          : Colors.white),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  Special_selected = false;
                                  Recommended_selected = true;
                                  Normal_selected = false;
                                });
                              },
                              child: Container(
                                width: 116.w,
                                height: 35.h,
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
                                    color: Recommended_selected != true
                                        ? Colors.white
                                        : kPrimaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    "Recommended",
                                    style: TextStyle(
                                        color: Recommended_selected != true
                                            ? Colors.grey
                                            : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  Special_selected = false;
                                  Recommended_selected = false;
                                  Normal_selected = true;
                                });
                              },
                              child: Container(
                                width: 116.w,
                                height: 35.h,
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
                                    color: Normal_selected != true
                                        ? Colors.white
                                        : kPrimaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Text(
                                    "Normal",
                                    style: TextStyle(
                                        color: Normal_selected != true
                                            ? Colors.grey
                                            : Colors.white),
                                  ),
                                ),
                              ),
                            ),

                        ],
                      ),
                    ),
                    Row(
                      children: [
                       Container(
                         margin: EdgeInsets.fromLTRB(15.w, 10.h, 150.w, 0.h),
                         width: 120.w,
                         height: 30.h,
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


                        Container(
                          margin: EdgeInsets.fromLTRB(15.w, 7.h, 1.w, 0.h),
                          child: InkWell(
                              onTap: () {
                                Filter_popup().showDialog(size, context);
                              },
                              child: Image.asset(
                                "assets/images/inventory/filter.png",
                                height: 36.h,
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5.w, 7.h, 1.w, 0.h),
                          child: InkWell(
                              onTap: () {
                                updateState();
                                // Navigator.push(
                                //     context,
                                //     PageTransition(
                                //         type: PageTransitionType.fade,
                                //         child: textView(
                                //           size
                                //         )));
                              },
                              child: Image.asset(
                                "assets/images/game/icons/search_icon.png",
                                height: 36.h,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


            Special_selected == true ? Game_Special_View(size) : Container(),
            Recommended_selected == true
                ? Game_Recommended_View(size)
                : Container(),
            Normal_selected == true ? Game_Normal_View(size) : Container(),
          ],
        ),
      ),
    );
  }
}
