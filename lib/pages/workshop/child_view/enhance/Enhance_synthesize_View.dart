import 'package:bengal_app/types/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../Controller/Inventory_controller/enhance_controller.dart';
import '../../widget/Enhance/Enhance_Cars_Card.dart';
import '../../widget/Enhance/Enhance_Cars_View.dart';
import '../../widget/Enhance/enhance_select_card.dart';



//se_Enhance_synthesize_ViewState mainState = new se_Enhance_synthesize_ViewState();

class Enhance_synthesize_View extends StatefulWidget {
  Enhance_synthesize_View({Key? key}) : super(key: key);

  @override
  se_Enhance_synthesize_ViewState createState() =>
      se_Enhance_synthesize_ViewState();
}

class se_Enhance_synthesize_ViewState extends State<Enhance_synthesize_View> {
  Enhance_Car_Card? child;
  bool normal_ontp = true;
  bool rare_ontap = false;
  bool elite_ontap = false;
  bool epic_ontap = false;
  var car_provider;


  void select_car(){
    if (car_provider.list.length < 5) {
      setState(() {
        car_provider
            .addItem("assets/images/common/cars/car1.png");
      });
    } else {
      return;
    }
  }



  @override
  void dispose() {

    // TODO: implement dispose
    Future.delayed(Duration.zero, () {
      //your code goes here
      car_provider.delete_all();
    });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    car_provider = Provider.of<Enhance_Controller>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 70.h, 15.w, 0.h),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    width: 200.w,
                    height: 200.h,
                    child: Image.asset(
                        "assets/images/workshop/enhance_circle.png")),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(50.w, 50.h, 15.w, 0.h),
                    width: 100.w,
                    height: 100.h,
                    child:
                        Image.asset("assets/images/workshop/enhance_button.png"),
                  ),
                ),
                Positioned(
                  left: 50.w,
                  top: -60.h,
                  child: Container(
                    width: 100.w,
                    height: 74.h,
                    child: 0 < car_provider.list.length
                        ? Enhance_select_Card(car_provider.list[0])
                        : Image.asset(
                            "assets/images/workshop/enhance_emptybox.png",
                            fit: BoxFit.fill,
                          ),
                  ),
                ),
                Positioned(
                  left: -50.w,
                  top: 35.h,
                  child: Container(
                    width: 100.w,
                    height: 74.h,
                    child: car_provider.list.length > 1 &&
                            car_provider.list.length <= 5
                        ?Enhance_select_Card(car_provider.list[1])
                        : Image.asset(
                            "assets/images/workshop/enhance_emptybox.png",
                            fit: BoxFit.fill,
                          ),
                  ),
                ),
                Positioned(
                  right: -50.w,
                  top: 35.h,
                  child: Container(
                    width: 100.w,
                    height: 74.h,
                    child: car_provider.list.length > 2 &&
                            car_provider.list.length <= 5
                        ? Enhance_select_Card(car_provider.list[2])
                        : Image.asset(
                            "assets/images/workshop/enhance_emptybox.png",
                            fit: BoxFit.fill,
                          ),
                  ),
                ),
                Positioned(
                  right: -25.w,
                  bottom: -30.h,
                  child: Container(
                    width: 100.w,
                    height: 74.h,
                    child: car_provider.list.length > 3 &&
                            car_provider.list.length <= 5
                        ? Enhance_select_Card(car_provider.list[3])
                        : Image.asset(
                            "assets/images/workshop/enhance_emptybox.png",
                            fit: BoxFit.fill,
                          ),
                  ),
                ),
                Positioned(
                  left: -25.w,
                  bottom: -30.h,
                  child: Container(
                    width: 100.w,
                    height: 74.h,
                    child: car_provider.list.length > 4 &&
                            car_provider.list.length <= 5
                        ? Enhance_select_Card(car_provider.list[4])
                        : Image.asset(
                            "assets/images/workshop/enhance_emptybox.png",
                            fit: BoxFit.fill,
                          ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 35.h, 0.w, 0.h),
            width: 360,
            height: 34.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                    child: Text(
                      "Enhance Cost:",
                      style: TextStyle(color: Colors.grey.shade600),
                    )),
                Row(
                  children: [
                    Container(
                        width: 22.w,
                        height: 22.h,
                        child: Image.asset(
                            "assets/images/lobby/icons/appbar_icons/xper_icon.png")),
                    Text(
                      "0.03 xper",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                        width: 22.w,
                        height: 22.h,
                        child: Image.asset(
                            "assets/images/lobby/icons/appbar_icons/per_icon.png")),
                    Text(
                      "0.03 per",
                      style: TextStyle(color: kPerColor, fontSize: 10),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                  child: Row(
                    children: [
                      Container(
                          width: 22.w,
                          height: 22.h,
                          child: Image.asset(
                              "assets/images/workshop/enhance_icon.png")),
                      Text(
                        "0.03 xper",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.w, 16.h, 0.w, 0.h),
            width: 390.w,
            height: 245.h,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 40.h,
                  width: 360.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
                        width: 70.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            color: normal_ontp == false
                                ? Colors.white
                                : Colors.grey.shade300,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: InkWell(
                          onTap: () {
                            print(normal_ontp);
                            setState(() {
                              normal_ontp = true;
                              rare_ontap = false;
                              elite_ontap = false;
                              epic_ontap = false;
                            });
                          },
                          child: Center(
                            child: Text(
                              "Normal",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10.w, 10.h, 0.w, 0.h),
                        width: 70.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            color: rare_ontap == false
                                ? Colors.white
                                : Colors.grey.shade300,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              normal_ontp = false;
                              rare_ontap = true;
                              elite_ontap = false;
                              epic_ontap = false;
                            });
                          },
                          child: Center(
                            child: Text(
                              "Rare",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10.w, 10.h, 0.w, 0.h),
                        width: 70.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            color: elite_ontap == false
                                ? Colors.white
                                : Colors.grey.shade300,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: InkWell(
                          onTap: () {
                            print(normal_ontp);
                            setState(() {
                              normal_ontp = false;
                              rare_ontap = false;
                              elite_ontap = true;
                              epic_ontap = false;
                            });
                          },
                          child: Center(
                            child: Text(
                              "Elite",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10.w, 10.h, 0.w, 0.h),
                        width: 70.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            color: epic_ontap == false
                                ? Colors.white
                                : Colors.grey.shade300,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: InkWell(
                          onTap: () {
                            print(normal_ontp);
                            setState(() {
                              normal_ontp = false;
                              rare_ontap = false;
                              elite_ontap = false;
                              epic_ontap = true;
                            });
                          },
                          child: Center(
                            child: Text(
                              "Epic",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 10.h),
                  width: 390.w,
                  height: 1.h,
                  color: Colors.grey.shade300,
                ),
                Container(
                    width: 390.w,
                    height: 184.h,
                    child: Container(
                      width: 360.w,
                      height: 700.h,
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 0.w,
                            mainAxisSpacing: 0.h,
                            childAspectRatio: 1.h / 0.9.h,
                          ),
                          itemCount: 10,
                          // shrinkWrap: true,

                          itemBuilder: (BuildContext context, int index) {
                            return Center(
                              child: InkWell(
                                onTap: () {


                                },
                                child: Enhance_Car_Card(
                                  fun: select_car,
                                  size:size,
                                  context:context,
                                 badge_title:   "SEDAN", grade: "epic", Mint_value: 3, nft_id: 12345, Level: 3,
                                ),
                              ),
                            );
                          }),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
