import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../inventory/widget/carboxes/Inventory_CarBoxes_Card.dart';
import 'Workshop_Cars_Card.dart';


Widget Workshop_Cars_View(Size size){
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: 360.w,
        height: 700.h,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing:1.w,
              mainAxisSpacing: 2.h,
              childAspectRatio: 1 / 1.06,
            ),
            itemCount: 10,
            // shrinkWrap: true,

            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: (){

                },
                child: Center(
                  child: Workshop_Car_Card(
                      size,context, "SEDAN","epic", 3, 12345, 10,),
                ),
              );
            }
        ),
      ),
    ),
  );
}
