import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class MyTextStyles {
  static TextStyle appBarTitle =  TextStyle(
    color: Color(0xfffbe4d8),
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
    fontFamily: GoogleFonts.rubik().fontFamily,
  );
  
  static TextStyle appBarContents =  TextStyle(
    letterSpacing: 1,
    fontFamily: GoogleFonts.rubik().fontFamily,
  );
}