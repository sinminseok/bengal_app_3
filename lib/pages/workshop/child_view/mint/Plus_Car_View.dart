import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../Controller/Inventory_controller/mint_controller.dart';
import '../../../inventory/widget/dropdown_button/DropdownButton2.dart';
import '../../popup/filter_popup.dart';
import '../../widget/Mint/Mint_select_Card.dart';
import '../../widget/Mint/Workshop_Cars_Card.dart';

class Plus_Car_View extends StatefulWidget {
  const Plus_Car_View({Key? key}) : super(key: key);

  @override
  _Plus_Car_ViewState createState() => _Plus_Car_ViewState();
}

class _Plus_Car_ViewState extends State<Plus_Car_View> {
  final List<String> items = [
    'Lowest Level',
    'Highest Level',
    'Lastest',
  ];
  String? selectedValue = "Lowest Level";

  var car_provider;


  void select_car(){
    if (car_provider.list.length < 2) {
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
    car_provider = Provider.of<Mint_Controller>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 390.w,
            height: 191.h,
            color: Colors.grey.shade300,
            child: Row(

              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 19.h, 0.w, 20.h),

                  child: 0 < car_provider.list.length
                      ? Mint_Select_Card(car_provider.list[0]):Image.asset(
                    "assets/images/workshop/empty_plus.png",
                    fit: BoxFit.fill,
                    width: 170.w,
                    height: 152.h,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.w, 19.h, 0.w, 20.h),
                  child: car_provider.list.length > 1 &&
                car_provider.list.length <= 2?Mint_Select_Card(car_provider.list[1]):Image.asset(
                    "assets/images/workshop/empty_plus.png",
                    fit: BoxFit.fill,
                    width: 170.w,
                    height: 152.h,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 390.w,
            height: 62.h,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10.w, 7.h, 15.w, 0.h),
                  width: 120.w,
                  height: 30.h,
                  child: CustomDropdownButton2(
                    hint: 'Lowest Level',
                    dropdownItems: items,
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.w, 7.h, 15.w, 0.h),
                  height: 36.h,
                  width: 36.h,
                  child: InkWell(
                      onTap: () {
                        Workshop_Filter_popup().showDialog(size, context);
                      },
                      child: Image.asset(
                        "assets/images/inventory/filter.png",
                      )),
                )
              ],
            ),
          ),
          Container(

            width: 390.w,
            height: 347.h,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(width: 1.w, color: Colors.grey.shade300))
            ),

            child: Center(
              child: Container(
                width: 360.w,
                height: 700.h,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing:1.w,
                      mainAxisSpacing: 2.h,
                      childAspectRatio: 1.h / 1.15.h,
                    ),
                    itemCount: 10,
                    // shrinkWrap: true,

                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Mint_Car_Card(size: size, context: context, badge_title: 'SEDAN', grade: 'epic', Mint_value: 3, nft_id: 1234123, Level: 3, fun: select_car,
                        ),
                      );
                    }
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
