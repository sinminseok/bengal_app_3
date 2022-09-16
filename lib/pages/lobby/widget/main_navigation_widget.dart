import "package:flutter/material.dart";

class MainNavigationWidget extends StatefulWidget {
  const MainNavigationWidget({Key? key}) : super(key: key);

  @override
  MainNavigationWidgetState createState() => MainNavigationWidgetState();
}

class MainNavigationWidgetState extends State<MainNavigationWidget> {

  @override
  Widget build(BuildContext context) {

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Image.asset("assets/images/lobby/navi_lobby.png",
              width: 50,
              height: 50,
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset("assets/images/lobby/navi_inventory.png",
              width: 50,
              height: 50,
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset("assets/images/lobby/navi_workshop.png",
              width: 50,
              height: 50,
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset("assets/images/lobby/navi_game.png",
              width: 50,
              height: 50,
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset("assets/images/lobby/navi_market.png",
              width: 50,
              height: 50,
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,),
          ),

        ]
    );
  }

}
