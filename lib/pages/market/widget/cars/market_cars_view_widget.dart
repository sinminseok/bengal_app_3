import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Controller/storage_controller.dart';
import '../../../../common/observer.dart';
import 'Market_Car_Card2.dart';

class MarketCarsViewWidget extends StatefulWidget {
  const MarketCarsViewWidget({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  MarketCarsViewWidgetState createState() => MarketCarsViewWidgetState();
}

class MarketCarsViewWidgetState extends State<MarketCarsViewWidget> implements Observer {
  @override
  void initState() {
    super.initState();
    StorageController().registerObserver(this);
  }

  @override
  update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          width: 390.w,
          height: 570.h,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1.w,
                mainAxisSpacing: 3.h,
                childAspectRatio: 1.h / 1.5.h,
              ),
              itemCount: StorageController().carNftPool!.list.length,
              // shrinkWrap: true,

              itemBuilder: (BuildContext context, int index) {
                return Center(
                  //Inventory_Card(Size size,
                  //     String badge_title,
                  //     String grade
                  //     int Mint_value,
                  //     int nft_id,
                  //     int Level,
                  //     int Speed_value,
                  //     int Luck_value,
                  //     int Charge_value,
                  //     int Repair_value,
                  //     int distance)
                  child: Market_Car_Card2(
                      size:widget.size,color: Colors.blue,context: context,
                      carNft:StorageController().carNftPool!.list[index]),
                  // child: Market_Car_Card(
                  //     size,context, "SPORTS","normal", 3, 12345, 10, 13, 14, 15, 16, 13),
                );
              }
          ),
        ),
      ),
    );
  }
}
