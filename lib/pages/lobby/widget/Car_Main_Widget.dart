import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:page_transition/page_transition.dart';
import '../../../common/car/Car_Detail_FrameView.dart';

Widget Car_Main_Widget(BuildContext context,Size size,int level,int nft_id,double Durability,int distance,String distance_status){
  return InkWell(
    onTap: (){
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              child: Car_Detail_FrameView(
              )));
    },
    child: Container(
      width: size.width,
      height: size.height * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom:30.0),
            child: Image.asset("assets/images/common/cars/car1.png",
                height: size.height * 0.4),
          ),
          Column(

            children: [
              SizedBox(
                height: size.height * 0.27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Lv $level",
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset(
                    "assets/images/lobby/icons/circle_icon.png",
                    width: size.width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "$nft_id",
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
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
              Row(
                children: [
                  SizedBox(width: size.width*0.1,),
                  LinearPercentIndicator(
                    center: Text(
                      "Durability 45.50%",
                      style: TextStyle(color: Colors.white),
                    ),
                    barRadius: Radius.circular(10),
                    width: size.width * 0.8,
                    lineHeight: size.height * 0.03,
                    percent: 0.9,
                    progressColor: Colors.teal,
                  ),
                ],
              ),
              SizedBox(height: size.height*0.01),
              Row(
                children: [
                  SizedBox(width: size.width*0.1,),
                  LinearPercentIndicator(

                    barRadius: Radius.circular(10),
                    width: size.width * 0.6,
                    lineHeight: size.height * 0.01,
                    percent: 0.9,
                    progressColor: Colors.teal,
                  ),

                  Text("$distance km($distance_status)",style: TextStyle(color: Colors.grey,fontSize: 12),)
                ],
              ),

            ],
          )
        ],
      ),
    ),
  );
}
