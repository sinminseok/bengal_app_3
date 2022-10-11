import 'package:bengal_app/types/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../controller/Inventory_controller/enhance_controller.dart';


class Enhance_Car_Card extends StatefulWidget {
   Function? fun;
  Size size;
  BuildContext context;
  String badge_title;
  String grade;
  int Mint_value;
  int nft_id;
  int Level;

  Enhance_Car_Card(
      {Key? key,
        required this.fun,
      required this.size,
      required this.context,
      required this.badge_title,
      required this.grade,
      required this.Mint_value,
      required this.nft_id,
      required this.Level})
      : super(key: key);

  @override
  _Enhance_Car_CardState createState() => _Enhance_Car_CardState();
}

class _Enhance_Car_CardState extends State<Enhance_Car_Card> {

  var car_provider;

  @override
  void dispose() {
    // TODO: implement dispose

    // mainState.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    car_provider = Provider.of<Enhance_Controller>(widget.context, listen: false);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 175.w,
          height: 187.h,
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
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
                ),
              ),

              //car img
              SizedBox(
                width: 150.w,
                height: 86.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    "assets/images/common/cars/car1.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              //nftID
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 6.h, 15.w, 0.h),
                width: 76.w,
                height: 20.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 15.w,
                      height: 15.h,
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 7.w, 0.h),
                      decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(4.w, 0.h, 1.w, 2.h),
                        child: Text(
                          "#",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    Text(
                      "${widget.nft_id}",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold),
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
                  margin: EdgeInsets.fromLTRB(15.w, 9.h, 15.w, 0.h),
                  width: 100.w,
                  height: 26.h,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(29))),
                  child: Center(
                    child: Text(
                          "Select",
                          style: TextStyle(color: Colors.white),
                        )),

                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 126.w,
          child: Container(
            width: 60.w,
            height: 20.h,
            child: Image.asset(
              "assets/images/common/tags/tag_${widget.grade}.png",
            ),
          ),
        ),
        Positioned(
            right: 145.w,
            top: 2.5.h,
            child: Text(
              "${widget.badge_title}",
              style: TextStyle(fontSize: 8, color: Colors.white),
            )),
      ],
    );
  }
}
