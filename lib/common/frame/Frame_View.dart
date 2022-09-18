



import 'package:bengal_app/common/frame/widget/Coin_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:two_week/Utils/constants.dart';
// import 'package:two_week/View/Frame/Frame_Widgets/Coin_Widget.dart';
// import 'package:two_week/View/Game/Game_View.dart';
// import 'package:two_week/View/Inventory/Inventory_View.dart';
// import 'package:two_week/View/Lobby/Lobby_View.dart';
// import 'package:two_week/View/Market/Market_View.dart';
// import 'package:two_week/View/Workshop/Workshop_View.dart';
//
// import '../../Widget/bottom_nav_widget.dart';
import '../../pages/game/Game_View.dart';
import '../../pages/inventory/Inventory_View.dart';
import '../../pages/lobby/Lobby_View.dart';
import '../../pages/lobby/widget/bottom_nav_widget.dart';
import '../../pages/market/Market_View.dart';
import '../../pages/workshop/Workshop_View.dart';
import '../../types/constants.dart';

class Frame_View extends StatefulWidget {
  const Frame_View({Key? key}) : super(key: key);

  @override
  _Frame_View createState() => _Frame_View();
}

class _Frame_View extends State<Frame_View> {

  int _selectedItem = 0;
  final screens = [
    const Lobby_View(),
    const Inventory_View(),
    const Workshop_View(),
    const Game_View(),
    const Market_View()
    // Home_Screen(),
    // Calendar_Screen(),
    // Deliver_Screen(),
    // Mypage_Screen()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: size.height*0.09,
          elevation: 0,
          backgroundColor: kAppbarColor,
          title: Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Row(
              children: [
                Image.asset("assets/images/lobby/icons/appbar_icons/ico_user.png",height: size.height*0.06,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text("Hello",style: TextStyle(fontSize: 12,color: Colors.grey),),
                      Text("GUEST",style: TextStyle(fontSize: 14,color: kPrimaryColor),)

                    ],
                  ),
                ),
                SizedBox(width: size.width*0.08,),
                Coin_Widget("xper_icon", "0.00", size),
                Coin_Widget("per_icon", "0.00", size),
                Coin_Widget("havah_icon", "0.00", size),

                Image.asset("assets/images/lobby/icons/appbar_icons/btn_wallet.png",width: size.width*0.083,)
              ],
            ),
          ),
        ),
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: CustomBottomNavigationBar(

            iconList: const [
              "assets/images/lobby/icons/bottom_nav_icon/lobby_icon.png",
              "assets/images/lobby/icons/bottom_nav_icon/inventory_icon.png",
              "assets/images/lobby/icons/bottom_nav_icon/workshop_icon.png",
              "assets/images/lobby/icons/bottom_nav_icon/game_icon.png",
              "assets/images/lobby/icons/bottom_nav_icon/market_icon.png"

            ],

            titleList:const [
              "LOBBY",
              "INVENTORY",
              "WORKSHOP",
              "GAME",
              "MARKET",
            ],
            onChange: (val) {
              setState(() {
                _selectedItem = val;
              });
            },
            defaultSelectedIndex: 0,
          ),
          body: screens[_selectedItem]),
    );
  }
}
