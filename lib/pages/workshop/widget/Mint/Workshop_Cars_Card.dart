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
  String badge_title;
  String grade;
  int Mint_value;
  int nft_id;
  int Level;

  Mint_Car_Card(
      {Key? key,
      required this.size,
        required this.fun,
      required this.context,
      required this.badge_title,
      required this.grade,
      required this.Mint_value,
      required this.nft_id,
      required this.Level})
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
          height: 230.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(
                Radius.circular(6.0) //         <--- border radius here
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(80.w, 6.h, 0.w, 6.h),
                child: Text(
                  "Lv ${widget.Level} / Mint: ${widget.Mint_value}",
                  style: TextStyle(fontSize: 11,color: Colors.grey.shade600),
                ),
              ),

              //car img
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(

                  "assets/images/common/cars/car1.png",
                  width: 150.w,
                  fit: BoxFit.fitWidth,
                ),
              ),
              //nftID
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                width: 76.w,
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
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 7.w, 1.h),

                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(4.w, 0.h, 1.w, 2.h),

                        child: Text(
                          "#",
                          style: TextStyle(color: Colors.white,fontSize: 11),
                        ),
                      ),
                    ),

                    Text(
                      "${widget.nft_id}",
                      style: TextStyle(fontSize: 12,color: Colors.grey.shade500,fontWeight: FontWeight.bold),
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
                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                  width: 100.w,
                  height: 27.h,
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
          right: 110.w,
          child: Image.asset(
            "assets/images/common/tags/tag_${widget.grade}.png",
            width: widget.size.width * 0.17,
          ),
        ),
        Positioned(
            right: widget.size.width * 0.33,
            top: widget.size.height * 0.005,
            child: Text(
              "${widget.badge_title}",
              style: TextStyle(fontSize: 12, color: Colors.white),
            )),
      ],

    );
  }
}
