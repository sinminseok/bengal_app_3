import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../../../common/string_configuration.dart";
import "../../../types/string_type.dart";

class EarnTodayWidget extends StatefulWidget {
  const EarnTodayWidget({Key? key}) : super(key: key);

  @override
  EarnTodayWidgetState createState() => EarnTodayWidgetState();
}

class EarnTodayWidgetState extends State<EarnTodayWidget> {

  @override
  Widget build(BuildContext context) {

    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text(StringConfiguration().uiString(UiStringType.PLAY_INFO_03),
                  style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF342B35),
                      fontWeight: FontWeight.w700),
                      fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Text(StringConfiguration().uiString(UiStringType.LOBBY_TAB_02),
                  style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFFE4E4E4),
                      fontWeight: FontWeight.w700),
                      fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Text(StringConfiguration().uiString(UiStringType.LOBBY_TAB_03),
                  style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFFE4E4E4),
                      fontWeight: FontWeight.w700),
                      fontSize: 12),
                ),
              ),
            ],
          ),

          Row (
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                        child: Image.asset("assets/images/lobby/xper_coin1.png",
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          fit: BoxFit.cover,),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(6, 28, 0, 0),
                        child: Image.asset("assets/images/lobby/percent_per.png",
                          width: 200,
                          height: 2,
                          alignment: Alignment.center,
                          fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 12, 0, 0),
                        child: Image.asset("assets/images/lobby/per_coin1.png",
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          fit: BoxFit.cover,),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(6, 30, 0, 0),
                        child: Image.asset("assets/images/lobby/percent_per.png",
                          width: 200,
                          height: 2,
                          alignment: Alignment.center,
                          fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 10, 0, 0),
                child: Row(
                  children: [
                    Image.asset("assets/images/lobby/current_earn.png",
                      width: 20,
                      height: 52,
                      alignment: Alignment.center,
                      fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 11, 0, 0),
                      child: Text("12.0/16.0",
                        style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF342B35),
                            fontWeight: FontWeight.w400),
                            fontSize: 12),
                      ),
                    ),

                  ],
                ),
              ),


            ],
          )


        ]
    );
  }

}
