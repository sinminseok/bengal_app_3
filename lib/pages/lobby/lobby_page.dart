import 'package:bengal_app/pages/lobby/widget/account_status_widget.dart';
import 'package:bengal_app/pages/lobby/widget/earn_today_widget.dart';
import 'package:bengal_app/pages/lobby/widget/game_sell_all.dart';
import 'package:bengal_app/pages/lobby/widget/game_slider_widget.dart';
import 'package:bengal_app/pages/lobby/widget/gift_box_widget.dart';
import 'package:bengal_app/pages/lobby/widget/main_navigation_widget.dart';
import 'package:bengal_app/pages/lobby/widget/my_nft_widget.dart';
import 'package:bengal_app/pages/login/signup_page.dart';
import 'package:bengal_app/pages/login/widget/login_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common/string_configuration.dart';
import '../../types/string_type.dart';

class LobbyPage extends StatefulWidget {
  const LobbyPage({Key? key}) : super(key: key);

  @override
  LobbyPageState createState() => LobbyPageState();
}

class LobbyPageState extends State<LobbyPage> {
  late ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF),
      //backgroundColor: const Color(0xFFFF0000),
      body: SingleChildScrollView(
        child: Column(children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 47, 15, 10),
            child: AccountStatusWidget(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: MyNftWidget(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: EarnTodayWidget(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: GiftBoxWidget(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: GameSeeAllWidget(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: GameSliderWidget(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: MainNavigationWidget(),
          ),
        ]),
      ),

      //bottomNavigationBar: const BottomAppBar(),
    );
  }
}
