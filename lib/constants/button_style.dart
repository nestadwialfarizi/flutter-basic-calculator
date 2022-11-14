import 'package:basic_calculator_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ButtonStyle numberElevatedButtonStyle = ElevatedButton.styleFrom(
  elevation: 4,
  backgroundColor: Colors.white,
  foregroundColor: cDark,
  textStyle: GoogleFonts.plusJakartaSans(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
  ),
);

final ButtonStyle equalToElevatedButtonStyle = ElevatedButton.styleFrom(
  elevation: 4,
  backgroundColor: cPrimary,
  foregroundColor: Colors.white,
  textStyle: GoogleFonts.plusJakartaSans(
    textStyle: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
    ),
  ),
);

final ButtonStyle allClearElevatedButtonStyle = ElevatedButton.styleFrom(
  elevation: 4,
  backgroundColor: cSecondary,
  foregroundColor: Colors.white,
  textStyle: GoogleFonts.plusJakartaSans(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
  ),
);

final ButtonStyle backspaceElevatedButtonStyle = ElevatedButton.styleFrom(
  elevation: 4,
  backgroundColor: cDark,
  foregroundColor: Colors.white,
  textStyle: GoogleFonts.plusJakartaSans(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
  ),
);

final ButtonStyle operatorElevatedButtonStyle = ElevatedButton.styleFrom(
  elevation: 4,
  backgroundColor: cDark,
  foregroundColor: Colors.white,
  textStyle: GoogleFonts.plusJakartaSans(
    textStyle: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
    ),
  ),
);
