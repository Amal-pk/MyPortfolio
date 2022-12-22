import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstantTxtStyles {
  static TextStyle? userNameStyle = const TextStyle(
    fontSize: 23,
    color: Colors.white,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
  );
  static TextStyle? domainNameStyle = const TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    letterSpacing: 1,
  );
  static TextStyle? quoteStyle = const TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w900,
    color: Colors.white,
    letterSpacing: 1,
  );
  static TextStyle? headingStyle = GoogleFonts.lexend(
    fontSize: 23,
    fontWeight: FontWeight.w500,
    letterSpacing: 3,
    color: Colors.black,
  );
  static TextStyle? projectHeading = const TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w900,
    color: Colors.black,
    letterSpacing: 1,
  );
}
