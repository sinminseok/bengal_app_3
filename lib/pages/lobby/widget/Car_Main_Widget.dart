import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../controller/CarsNft_controller/carnft_controller.dart';
import 'Car_Maindetail_Widget.dart';

class Car_Main_StatefulWidget extends StatefulWidget {
  const Car_Main_StatefulWidget({Key? key}) : super(key: key);

  @override
  _Car_Main_StatefulWidgetState createState() => _Car_Main_StatefulWidgetState();
}

class _Car_Main_StatefulWidgetState extends State<Car_Main_StatefulWidget> {
  var carlist;
  var selected_car;

  // initialPage 값에 시작할 페이지 설정삽입
  PageController pageController = PageController(
      initialPage: StorageController().selectedCarIndex, keepPage: false
  );

  @override
  void initState() {
    carlist = StorageController().carNftList!.list;
    // TODO: implement initState

    super.initState();
  }


  void changedPage(int page){
    StorageController().setSelectCarToIndex(page);
  }


  @override
  Widget build(BuildContext context) {

    return  Container(

      //margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
        width: 390.w,
        height: 277.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [],
        ),
      child: PageView.builder(
          controller: pageController,
          allowImplicitScrolling: false,

          onPageChanged: changedPage,
          scrollDirection: Axis.horizontal,
          itemCount: carlist.length,
          itemBuilder: (BuildContext ctx, int idx) {
            return Car_Maindetail_Widget(car: carlist[idx],);
          }),
    );
  }
}

