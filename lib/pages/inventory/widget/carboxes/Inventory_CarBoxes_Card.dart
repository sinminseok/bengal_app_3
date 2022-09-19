import 'package:flutter/material.dart';

Widget Inventory_CarBoxes_Card(
    Size size,
    String badge_title,
    int nft_id,
    // Colors colors,

  ) {

  const card_color = Colors.red;

  return Stack(
    clipBehavior: Clip.none,
    children: [

      Container(
        width: size.width * 0.41,
        height: size.height * 0.27,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.all(
              Radius.circular(6.0) //         <--- border radius here
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            //car img
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/inventory/car_boxes/$badge_title.png",
                width: size.width * 0.21,
              ),
            ),
            //nftID
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width * 0.23,
                height: size.height * 0.03,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(
                      Radius.circular(30.0) //         <--- border radius here
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0),
                      child: Container(
                        width: size.width * 0.04,
                        height: size.height * 0.04,
                        decoration: BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.0073,
                            ),
                            Text(
                              "#",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Text(
                      "$nft_id",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            //Level

          ],
        ),
      ),
      Positioned(
        right: size.width*0.265,
        child: Image.asset("assets/images/common/cars/badge.png",width: size.width*0.17,),
      ),
      Positioned(
        top: size.height*0.013,
        right: size.width*0.41,
        child: Image.asset("assets/images/common/cars/badge_bottom.png",width: size.width*0.02,height: size.height*0.05,fit: BoxFit.fitWidth,),
      ),
      Positioned(
          right: size.width*0.3,
          top: size.height*0.005,
          child: Text("$badge_title",style: TextStyle(fontSize: 12,color: Colors.white),)
      ),
    ],
  );
}
