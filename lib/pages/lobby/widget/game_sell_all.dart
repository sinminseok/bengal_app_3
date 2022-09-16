import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../../../common/string_configuration.dart";
import "../../../types/string_type.dart";

class GameSeeAllWidget extends StatefulWidget {
  const GameSeeAllWidget({Key? key}) : super(key: key);

  @override
  GameSeeAllWidgetState createState() => GameSeeAllWidgetState();
}

class GameSeeAllWidgetState extends State<GameSeeAllWidget> {

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(StringConfiguration().uiString(UiStringType.LOBBY_SPECIALBOX_03),
          style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF342B35), fontWeight: FontWeight.w700),
              fontSize: 16),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
          child: TextButton(
            onPressed: () {  },
            child: Text(StringConfiguration().uiString(UiStringType.LOBBY_SPECIALBOX_04),
              style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF8B80F8),
                  fontWeight: FontWeight.w400),
                  fontSize: 12),
            ),
          ),
        ),

      ]
    );
  }

}
