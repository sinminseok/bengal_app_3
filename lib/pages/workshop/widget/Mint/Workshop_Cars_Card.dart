import 'package:bengal_app/models/car.dart';
import 'package:bengal_app/types/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../car/Car_Detail_FrameView.dart';



class Mint_Car_Card extends StatefulWidget {
  Size size;
  Function? fun;
  BuildContext context;
  CarNft carNft;

  Mint_Car_Card(
      {Key? key,
      required this.size,
        required this.fun,
      required this.context,
      required this.carNft})
      : super(key: key);

  @override
  _Mint_Car_CardState createState() => _Mint_Car_CardState();
}

class _Mint_Car_CardState extends State<Mint_Car_Card> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 170.w,
          height: 195.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(
                Radius.circular(6.0) //         <--- border radius here
            ),
          ),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.w, 6.h, 10.w, 9.h),
                    child: Text(
                      "Lv ${widget.carNft.level} / Mint: ${widget.carNft.mintingCount}",
                      style: TextStyle(fontSize: 11,color: Colors.grey.shade600),
                    ),
                  ),
                ],
              ),

              //car img
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(

                  "assets/images/common/cars/car1.png",
                  width: 150.w,
                  height: 86.h,
                  fit: BoxFit.fitWidth,
                ),
              ),
              //nftID
              Container(
                margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),

                width: 120.w,
                height: 23.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(
                      Radius.circular(30.0) //         <--- border radius here
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 15.w,
                      height: 15.h,
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 0.w, 1.h),

                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(4.3.w, 1.3.h, 0.w, 0.h),

                        child: Text(
                          "#",
                          style: TextStyle(color: Colors.white,fontSize: 10.sp),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(3.w, 1.h, 0.w, 0.h),
                      child: Text(
                        "${widget.carNft.id}",
                        style: TextStyle(fontSize: 12,color: Colors.grey.shade500,fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              //Level
              InkWell(
                onTap: (){
                  widget.fun!();
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.w, 9.h, 0.w, 0.h),

                  width: 100.w,
                  height: 26.h,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(29))
                  ),
                  child: Center(
                    child: Text("Select",style: TextStyle(color: Colors.white),),
                  ),
                ),
              )

            ],
          ),
        ),
        Positioned(
          top: 5.h,
          left: -5.w,
          child: Image.asset(
            "assets/images/common/tags/tag_${widget.carNft.getCarGradeString()}.png",
            width: 60.w,
            height: 20.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            left: 5.3.w,
            top: 8.5.h,
            child: Text(
              "${widget.carNft.getCarTypeString()}",
              style: TextStyle(fontSize: 8.sp, color: Colors.white),
            )),
      ],

    );
  }
}
