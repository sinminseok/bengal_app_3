import 'package:bengal_app/models/car.dart';
import 'package:bengal_app/types/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/font.dart';

class Mint_Car_Card extends StatefulWidget {
  Size size;
  Function? fun;
  BuildContext context;
  CarNft car;

  Mint_Car_Card(
      {Key? key,
      required this.size,
        required this.fun,
      required this.context,
      required this.car})
      : super(key: key);

  @override
  _Mint_Car_CardState createState() => _Mint_Car_CardState();
}

class _Mint_Car_CardState extends State<Mint_Car_Card> {
  bool selected_ontap = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 170.w,
          height: 195.h,
          decoration: BoxDecoration(
            border: Border.all(color: widget.car.getCarGradeColor()),
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
                      "Lv ${widget.car.level} / Mint: ${widget.car.mintingCount}",
                      style: TextStyle(fontSize: 11,color: widget.car.getCarGradeColor()),
                    ),
                  ),
                ],
              ),

              //car img
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  widget.car.getAssetImage(),
                  width: 150.w,
                  height: 86.h,
                  fit: BoxFit.fitWidth,
                ),
              ),
              //nftID
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 5.h, 15.w, 0.h),
                width: 85.w,
                height: 20.h,
                decoration: BoxDecoration(
                  border: Border.all(color: widget.car.getCarGradeColor()),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(30.0) //         <--- border radius here
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 12.w,
                      height: 12.h,
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 0.w, 1.h),
                      decoration:
                       BoxDecoration(color: widget.car.getCarGradeColor() , shape: BoxShape.circle),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(3.4.w, 1.5.h, 1.w, 0.h),
                        child: Text(
                          "#",
                          style:
                          Font.lato(Colors.white, FontWeight.w400, 6.sp),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(3.w, 1.h, 8.w, 0.h),
                      child: Text(
                        "${widget.car.id}",
                        style: Font.lato(
                            widget.car.getCarGradeColor(), FontWeight.bold, 10.sp),
                      ),
                    ),
                    Container()
                  ],
                ),
              ),
              //Level
              selected_ontap==true?
              Container(
                margin: EdgeInsets.fromLTRB(0.w, 9.h, 0.w, 0.h),

                width: 100.w,
                height: 26.h,
                decoration:  BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),

                    borderRadius: BorderRadius.all(Radius.circular(29))
                ),
                child: Center(
                  child: Text("Already Selected",
                    style: Font.lato(Colors.grey, FontWeight.bold, 10.sp),
                  ),
                ),
              )
                  :InkWell(
                onTap: (){
                  widget.fun!(widget.car);
                  setState(() {
                    selected_ontap = !selected_ontap;
                  });
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.w, 9.h, 0.w, 0.h),

                  width: 100.w,
                  height: 26.h,
                  decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(29))
                  ),
                  child: Center(
                    child: Text("Select",
                      style: Font.lato(Colors.white, FontWeight.bold, 12.sp),
                    ),
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
            "assets/images/common/tags/tag_${widget.car.getCarGradeString()}.png",
            width: 60.w,
            height: 20.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            left: 5.3.w,
            top: 8.5.h,
            child: Text(
              "${widget.car.getCarTypeString()}",
              style: TextStyle(fontSize: 8.sp, color: Colors.white),
            )),
      ],

    );
  }
}
