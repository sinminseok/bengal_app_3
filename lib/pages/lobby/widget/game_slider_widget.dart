import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common/string_configuration.dart';
import '../../../types/string_type.dart';

class GameSliderWidget extends StatefulWidget {
  const GameSliderWidget({Key? key}) : super(key: key);

  @override
  GameSliderWidgetState createState() => GameSliderWidgetState();
}

class GameSliderWidgetState extends State<GameSliderWidget> {

  @override
  Widget build(BuildContext context) {

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
            child: Image.asset('assets/images/lobby/game_dumy1.png',
              width: 70,
              height: 70,
              alignment: Alignment.center,
              fit: BoxFit.cover,),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(7, 45, 0, 0),
            child: Row(
              children: [
                Image.asset('assets/images/lobby/xper_coin2.png',
                  width: 14,
                  height: 14,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,),
                Image.asset('assets/images/lobby/per_coin2.png',
                  width: 14,
                  height: 14,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 15, 20),
            child: Image.asset('assets/images/lobby/btn_play.png',
              width: 60,
              height: 60,
              alignment: Alignment.center,
              fit: BoxFit.cover,),
          ),

        ]
    );
  }

}
