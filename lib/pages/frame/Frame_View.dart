import 'package:bengal_app/controller/Frame_controller/frame_controller.dart';
import 'package:bengal_app/pages/frame/widget/Coin_Widget.dart';
import 'package:bengal_app/types/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '../../controller/storage_controller.dart';
import '../../common/observer.dart';
import '../../common/string_configuration.dart';
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

class _Frame_View extends State<Frame_View>  implements Observer {

  var select;

  @override
  void initState() {
    super.initState();
    StorageController().registerObserver(this);
  }

  update() {
    setState(() {
      // select.convert(3);
    });
  }

  navigationSelect(int index) {
    setState(() {
      select.convert(index);
    });
  }

  @override
  updateObserver() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    select = Provider.of<Frame_Controller>(context, listen: false);
    final screens = [
      Lobby_View(navigationSelect: navigationSelect),
      Inventory_View(),
      Workshop_View(),
      Game_View(),
      Market_View()

      // Mypage_Screen()
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: kAppbarColor,
          title: SizedBox(
            height: 50.h,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/lobby/icons/appbar_icons/ico_user.png",
                        width: 36.w,
                        height: 36.w, //size.height * 0.06,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.w, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              StringConfiguration()
                                  .uiString(UiStringType.TOP_MENU_01),
                              style: TextStyle(
                                  fontSize: 10.sp, color: Colors.grey),
                            ),
                            Text(
                              StorageController().account!.name,
                              style: TextStyle(
                                  fontSize: 14.sp, color: kPrimaryColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Coin_Widget("xper_icon", StorageController().wallet!.balanceString(CoinType.XPer)),
                          Coin_Widget("per_icon", StorageController().wallet!.balanceString(CoinType.Per)),
                          Coin_Widget("havah_icon", StorageController().wallet!.balanceString(CoinType.Havah)),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),

                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: Wallet_View()));
                            },
                            child: Image.asset(
                              "assets/images/lobby/icons/appbar_icons/btn_wallet.png",
                              width: 36.w,
                              height: 36.w,
                              fit: BoxFit.contain,
                            )),
                      )
                    ])
              ],
            ),
          ),
        ),

        bottomNavigationBar: CustomBottomNavigationBar(
          iconList: const [
            "lobby_icon",
            "inventory_icon",
            "workshop_icon",
            "game_icon",
            "market_icon",
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

              select.convert(val);

            });
          },
          defaultSelectedIndex: 0,
        ),
        body: screens[select.selectedItem]);
  }

}
