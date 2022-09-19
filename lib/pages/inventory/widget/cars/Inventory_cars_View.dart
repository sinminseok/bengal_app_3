import 'package:flutter/cupertino.dart';
import 'Inventory_Cars_Card.dart';

Widget Inventory_Cars_View(Size size){
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: size.width*1,
        height: size.height*0.6,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing:size.width*0.01,
              mainAxisSpacing: size.height*0.01,
              childAspectRatio: 1 / 1.5,
            ),
            itemCount: 10,
            // shrinkWrap: true,

            itemBuilder: (BuildContext context, int index) {
              return Center(
                //Inventory_Card(Size size,
                //     String badge_title,
                //     int Mint_value,
                //     int nft_id,
                //     int Level,
                //     int Speed_value,
                //     int Luck_value,
                //     int Charge_value,
                //     int Repair_value,
                //     int distance)
                child: Inventory_Car_Card(
                    size, "SPORTS", 3, 12345, 10, 13, 14, 15, 16, 13),
              );
            }
        ),
      ),
    ),
  );
}
