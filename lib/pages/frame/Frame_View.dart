import 'package:bengal_app/pages/frame/widget/Coin_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '../../common/string_configuration.dart';
import '../../models/test_viewmodel.dart';
import '../../types/constants.dart';
import '../../types/string_type.dart';
import '../game/Game_View.dart';
import '../inventory/Inventory_View.dart';
import '../lobby/Lobby_View.dart';
import '../lobby/widget/bottom_nav_widget.dart';
import '../market/Market_View.dart';
import '../my_page/Mypage_View.dart';
import '../wallet/Wallet_View.dart';
import '../workshop/Workshop_View.dart';

class Frame_View extends StatefulWidget {
  const Frame_View({Key? key}) : super(key: key);

  @override
  _Frame_View createState() => _Frame_View();
}

class _Frame_View extends State<Frame_View> {
  int _selectedItem = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<Http_services>(context, listen: false)
          .change_tutorial(context);
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      Lobby_View(),
      Inventory_View(),
      Workshop_View(),
      Game_View(
        frame_context: context,
      ),
      Market_View()
      // Home_Screen(),
      // Calendar_Screen(),
      // Deliver_Screen(),
      // Mypage_Screen()
    ];
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: kAppbarColor,
            title: SizedBox(
              height: 97.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: MyPage_View()));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/ico_user.png",
                          width: 40.w,
                          height: 40.h, //size.height * 0.06,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(3.w, 34.h, 0.w, 0.h),
                          child: Column(
                            children: [
                              Text(
                                StringConfiguration()
                                    .uiString(UiStringType.TOP_MENU_01),
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.grey),
                              ),
                              Text(
                                StringConfiguration()
                                    .uiString(UiStringType.TOP_MENU_02),
                                style: TextStyle(
                                    fontSize: 14.sp, color: kPrimaryColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: size.width * 0.1,
                  // ),
                  SizedBox(
                    height: 40.h,
                    child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Coin_Widget("xper_icon", "0.00", size),
                          Coin_Widget("per_icon", "0.00", size),
                          Coin_Widget("havah_icon", "0.00", size),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: Wallet_View()));
                              },
                              child: Image.asset(
                                "assets/images/lobby/icons/appbar_icons/btn_wallet.png",
                                width: 40.w,
                                height: 40.h,
                                fit: BoxFit.fill,
                              ))
                        ]),
                  ),
                ],
              ),
            ),
          ),
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: CustomBottomNavigationBar(
            iconList: [
              "assets/images/lobby/icons/bottom_nav_icon/lobby_icon.png",
              "assets/images/lobby/icons/bottom_nav_icon/inventory_icon.png",
              "assets/images/lobby/icons/bottom_nav_icon/workshop_icon.png",
              "assets/images/lobby/icons/bottom_nav_icon/game_icon.png",
              "assets/images/lobby/icons/bottom_nav_icon/market_icon.png"
            ],
            titleList: [
              StringConfiguration().uiString(UiStringType.BOTTOM_NAVIGATION_01),
              StringConfiguration().uiString(UiStringType.BOTTOM_NAVIGATION_02),
              StringConfiguration().uiString(UiStringType.BOTTOM_NAVIGATION_03),
              StringConfiguration().uiString(UiStringType.BOTTOM_NAVIGATION_04),
              StringConfiguration().uiString(UiStringType.BOTTOM_NAVIGATION_05),
            ],
            onChange: (val) {
              setState(() {
                print(val);
                _selectedItem = val;
              });
            },
            defaultSelectedIndex: 0,
          ),
          body: screens[_selectedItem]),
    );
  }
}
