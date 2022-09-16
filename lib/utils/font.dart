import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Font {
  static TextStyle? lato(Color color, FontWeight weight, double size,
          [bool underline = false]) =>
      underline
          ? GoogleFonts.lato(
              textStyle: TextStyle(
                  color: color,
                  fontWeight: weight,
                  decoration: TextDecoration.underline),
              fontSize: size)
          : GoogleFonts.lato(
              textStyle: TextStyle(color: color, fontWeight: weight),
              fontSize: size);
}
