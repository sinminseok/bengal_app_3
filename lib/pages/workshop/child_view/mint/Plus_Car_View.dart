import 'package:bengal_app/controller/assets_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../controller/Inventory_controller/mint_controller.dart';
import '../../../../controller/storage_controller.dart';
import '../../../../models/car.dart';
import '../../../../types/common.dart';
import '../../../../types/constants.dart';
import '../../../../utils/font.dart';
import '../../../inventory/widget/dropdown_button/DropdownButton2.dart';
import '../../popup/car_detail_popup.dart';
import '../../popup/filter_popup.dart';
import '../../popup/mint_carbox_popup.dart';
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
  bool next_ontap = false;

  var car_provider;

  void select_car() {
    if (car_provider.list.length < 2) {
      setState(() {
        car_provider.addItem("assets/images/common/cars/car1.png");
      });
      // if(car_provider.list.length == 2){
      //   setState(() {
      //     selected = !selected;
      //   });
      // }
    } else {
      return;
    }
  }

  CarNftList? carnftlist;

  @override
  void initState() {
    carnftlist = StorageController().carNftList!;
    super.initState();
  }

  @override
  void dispose() {
    Future.delayed(Duration.zero, () {
      //your code goes here
      car_provider.delete_all();
    });

    super.dispose();
  }

  void setstate_ontap() {
    setState(() {
      selected = !selected;
    });
  }

  bool selected = false;
  double _height = 191.h;

  @override
  Widget build(BuildContext context) {
    car_provider = Provider.of<Mint_Controller>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            width: 390.w,
            height: _height,
            child: SizedBox(
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    top: next_ontap ? 50.0.h : 19.h,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                        child: 0 < car_provider.list.length
                            ? Mint_Select_Card(car_provider.list[0])
                            : Image.asset(
                                "assets/images/workshop/empty_plus.png",
                                fit: BoxFit.fill,
                                width: 170.w,
                                height: 152.h,
                              ),
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    right: 15.w,
                    top: next_ontap ? 50.0.h : 19.h,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                    child: GestureDetector(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                        child: 0 < car_provider.list.length &&
                                car_provider.list.length == 2
                            ? Mint_Select_Card(car_provider.list[1])
                            : Image.asset(
                                "assets/images/workshop/empty_plus.png",
                                fit: BoxFit.fill,
                                width: 170.w,
                                height: 152.h,
                              ),
                      ),
                    ),
                  ),
                  //sub img
                  Positioned(
                    left: 80.w,
                    top: 202.h,
                    child: Column(
                      children: [
                        SizedBox(
                            width: 230.w,
                            height: 90.h,
                            child: Image.asset(
                              "assets/images/workshop/sub_machine.png",
                              fit: BoxFit.fill,
                            ))
                      ],
                    ),
                  ),
                  //nft info
                  Positioned(
                      left: 35.w,
                      top: 320.h,
                      child: Container(
                        width: 320.w,
                        height: 120.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          width: 23.w,
                                          height: 23.h,
                                          child: Image.asset(
                                              AssetsController().getCoinIcon(CoinType.XPer)
                                          )),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(
                                              5.w, 0.h, 0.w, 0.h),
                                          child: Text(
                                            AssetsController().getCoinUpperCaseName(CoinType.XPer),
                                            style: Font.lato(Colors.grey.shade600, FontWeight.bold, 14.sp),
                                          ))
                                    ],
                                  ),
                                  Text(
                                    "20.0",
                                    style: Font.lato(Colors.grey.shade600, FontWeight.bold, 14.sp),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          width: 23.w,
                                          height: 23.h,
                                          child: Image.asset(
                                              AssetsController().getCoinIcon(CoinType.Per)
                                          )),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(
                                              5.w, 0.h, 0.w, 0.h),
                                          child: Text(
                                            AssetsController().getCoinUpperCaseName(CoinType.Per),
                                            style: Font.lato(kPerColor, FontWeight.bold, 14.sp),
                                          ))
                                    ],
                                  ),
                                  Text(
                                    "20.0",
                                    style: Font.lato(kPerColor, FontWeight.bold, 14.sp),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                          width: 23.w,
                                          height: 23.h,
                                          child: Image.asset(
                                            "assets/images/workshop/mint_icon.png",
                                          )),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(
                                              5.w, 0.h, 0.w, 0.h),
                                          child: Text(
                                            "Lv5 Minting Scroll",
                                            style: Font.lato(Colors.grey.shade600, FontWeight.bold, 14.sp),
                                          ))
                                    ],
                                  ),
                                  Text(
                                    "1/200",
                                    style: Font.lato(Colors.grey.shade600, FontWeight.bold, 14.sp),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          car_provider.list.length == 2
              ? Container(
              width: 390.w,
                  height: 80.h,
                  color: Colors.grey.shade200,
                  child: Column(
                    children: [
                      Container(
                        width: 175.w,
                        height: 46.h,
                        decoration: const BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: InkWell(
                          onTap: () {
                            next_ontap
                                ? setState(() {
                                  //minting ontap
                              Mint_Carbox_Popup().showDialog(size, context);

                            })
                                : setState(() {
                                    next_ontap = !next_ontap;
                                    _height = 500.h;
                                  });
                            print("d");
                          },
                          child: Center(
                            child: Text(
                              next_ontap ? "MINTING" : "NEXT",
                              style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
                            ),
                          ),
                        ),
                      ),
                      next_ontap
                          ?Container(
                          margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),

                          child: InkWell(
                              onTap: (){
                                setState(() {
                                  next_ontap = false;
                                  car_provider.delete_all();
                                  _height = 191.h;
                                });
                              },
                              child: Text(
                                "Parentes Reset",
                                style: Font.lato(Colors.grey.shade600, FontWeight.bold, 12.sp, true),
                              )))
                          :Container()
                    ],
                  ))
              : Container(),
          next_ontap == true
              ? Container()
              : Column(
                  children: [
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
                                  Workshop_Filter_popup()
                                      .showDialog(size, context);
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
                      height: 380.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              top: BorderSide(
                                  width: 1.w, color: Colors.grey.shade300))),
                      child: Center(
                        child: SizedBox(
                          width: 360.w,
                          height: 700.h,
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 1.w,
                                mainAxisSpacing: 2.h,
                                childAspectRatio: 0.85,
                              ),
                              itemCount: carnftlist!.list.length,
                              // shrinkWrap: true,

                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: (){
                                    Car_detail_popup().showDialog(size, context);

                                  },
                                  child: Center(
                                    child: Mint_Car_Card(
                                      size: size,
                                      context: context,
                                      fun: select_car,
                                      carNft: carnftlist!.list[index],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
