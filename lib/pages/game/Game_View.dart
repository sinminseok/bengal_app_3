import 'dart:ui';

import 'package:bengal_app/pages/game/popup/filter_popup.dart';
import 'package:bengal_app/pages/game/recommended/Game_Recommended_View.dart';
import 'package:bengal_app/pages/game/special/Game_Special_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../controller/storage_controller.dart';
import '../../models/game.dart';
import '../../types/constants.dart';
import '../../utils/font.dart';
import '../inventory/widget/dropdown_button/DropdownButton2.dart';
import 'normal/Game_Normal_View.dart';

class Game_View extends StatefulWidget {


  Game_View({Key? key}) : super(key: key);

  @override
  _Game_ViewState createState() => _Game_ViewState();
}

enum GameListTabItem {
  special,
  recommended,
  normal,
}

class _Game_ViewState extends State<Game_View> {
  // bool Special_selected = true;
  // bool Recommended_selected = false;
  // bool Normal_selected = false;

  bool animation = false;

  GameListTabItem selectedTab = GameListTabItem.special;

  Map<GameListTabItem, String> selectedSortValues = {
    GameListTabItem.special : GameInfoList.getSpecialGameSortItems()[0],
    GameListTabItem.recommended : GameInfoList.getRecommendedSortItems()[0],
    GameListTabItem.normal : GameInfoList.getNormalSortItems()[0],
  };

  List<String> getSortItems() {
    switch (selectedTab) {
      case GameListTabItem.special:
        return GameInfoList.getSpecialGameSortItems();
      case GameListTabItem.recommended:
        return GameInfoList.getRecommendedSortItems();
      case GameListTabItem.normal:
        return GameInfoList.getNormalSortItems();
      default:
        return [];
    }
  }

  TextEditingController _searchController = TextEditingController();

  void onChangeSortDropdownBox(String? value) {
    if (null == value || value.isEmpty) return;

    setState(() {
      selectedSortValues[selectedTab] = value;
      switch (selectedTab) {
        case GameListTabItem.special:
          StorageController().gameSpecialList.sortSpecialGame(value.getSpecialGameSortType);
          break;
        case GameListTabItem.recommended:
          StorageController().gameRecommendList.sortRecommendedGame(value.getRecommendGameSortType);
          break;
        case GameListTabItem.normal:
          StorageController().gameMyDemandList!.sortRecommendedGame(value.getRecommendGameSortType);
          break;
      }
    });
  }

  void onChangeFilter() {

  }

  // final List<String> items = [
  //   'Lowest Level',
  //   'Highest Level',
  //   'Lastest',
  // ];
  // String? selectedValue = "Lowest Level";
  double _height_animtaion = 200;

  updateState() {
    setState(() {
      if (_hegith == 170.h) {
        _hegith = 125.h;
      } else {
        _hegith = 170.h;
      }
    });
  }

  double _width = 390.w;
  double _hegith = 125.h;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Selected_Bar
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: Container(
                width: 390.w,
                height: _hegith,
                decoration: BoxDecoration(
                  color: Colors.white,

                  border:
                      Border(top: BorderSide(color: Colors.grey.shade300), bottom: BorderSide(color: Colors.grey.shade300)),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedTab = GameListTabItem.special;
                              });
                            },
                            child: Container(
                              width: 116.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  color: selectedTab != GameListTabItem.special
                                      ? Colors.white
                                      : kPrimaryColor,
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  "Special",
                                  style: Font.lato(selectedTab != GameListTabItem.special
                                      ? Colors.grey
                                      : Colors.white, FontWeight.bold, 12.sp),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedTab = GameListTabItem.recommended;
                              });
                            },
                            child: Container(
                              width: 116.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  color: selectedTab != GameListTabItem.recommended
                                      ? Colors.white
                                      : kPrimaryColor,
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  "Recommended",
                                  style: Font.lato(selectedTab != GameListTabItem.recommended
                                      ? Colors.grey
                                      : Colors.white, FontWeight.bold, 12.sp),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedTab = GameListTabItem.normal;
                              });
                            },
                            child: Container(
                              width: 116.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                  color: selectedTab != GameListTabItem.normal
                                      ? Colors.white
                                      : kPrimaryColor,
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  "Normal",
                                  style: Font.lato(selectedTab != GameListTabItem.normal
                                      ? Colors.grey
                                      : Colors.white, FontWeight.bold, 12.sp),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(15.w, 10.h, 150.w, 0.h),
                          width: 120.w,
                          height: 30.h,
                          child: CustomDropdownButton2(
                            hint: 'Lowest Level',
                            dropdownItems: getSortItems(),
                            value: selectedSortValues[selectedTab]!.isEmpty
                                ? getSortItems()[0]
                                : selectedSortValues[selectedTab],
                            onChanged: (value) {
                              setState(() {
                                onChangeSortDropdownBox(value);
                              });
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15.w, 7.h, 1.w, 0.h),
                          child: InkWell(
                              onTap: () {
                                Game_Filter_popup().showDialog(size, context);
                              },
                              child: Image.asset(
                                "assets/images/inventory/filter.png",
                                width: 36.w,
                                height: 36.h,
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5.w, 7.h, 1.w, 0.h),
                          child: InkWell(
                              onTap: () {
                                updateState();
                              },
                              child: Image.asset(
                                "assets/images/game/icons/search_icon.png",
                                width: 36.w,
                                height: 36.h,
                              )),
                        ),
                      ],
                    ),
                    _hegith == 170.h
                        ? Container(
                            margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
                            width: 360.w,
                            height: 37.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: IconTheme(
                                      data: IconThemeData(color: Colors.grey),
                                      child: Icon(
                                        Icons.search,
                                      )),
                                  contentPadding: EdgeInsets.all(14.0),
                                  hintText: 'Please enter game name.',
                                  hintStyle: TextStyle(fontSize: 13)),
                              style: Font.lato(const Color(0xFFBAB8C4), FontWeight.w400, 8.sp),
                              controller: _searchController,
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            ),

            selectedTab == GameListTabItem.special
                ? Game_Special_View(context,
                    StorageController().getCategoryGameList(1).list)
                : Container(),
            selectedTab == GameListTabItem.recommended
                ? Game_Recommended_View(context,
                StorageController().getCategoryGameList(2).list)
                : Container(),
            selectedTab == GameListTabItem.normal
                ? Game_Normal_View(context,
                StorageController().getCategoryGameList(3).list)
                : Container(),
          ],
        ),
      ),
    );
  }
}
