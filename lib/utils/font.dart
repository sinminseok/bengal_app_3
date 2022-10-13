import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Font {
  static TextStyle? lato(Color color, FontWeight weight, double size,
          [TextDecoration decoration = TextDecoration.none]) =>
      GoogleFonts.lato(
          textStyle: TextStyle(color: color, fontWeight: weight),
          fontSize: size,
          decoration: decoration);
}
