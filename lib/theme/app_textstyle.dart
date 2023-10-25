import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle(double size, Color color, FontWeight fw) {
  return GoogleFonts.epilogue(fontSize: size, fontWeight: fw, color: color);
}

TextStyle appstyleWithHt(double size, Color color, FontWeight fw, double ht) {
  return GoogleFonts.epilogue(
      fontSize: size, fontWeight: fw, color: color, height: ht);
}
