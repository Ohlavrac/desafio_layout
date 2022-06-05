import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {

  static final texts = GoogleFonts.patrickHand(
    fontSize: 70,
    //color: AppColors.primary,
    fontWeight: FontWeight.bold
  );

  static final textsSimple = GoogleFonts.patrickHand(
    fontSize: 23,
    //color: AppColors.secondary,
    fontWeight: FontWeight.w700
  );

  static final numbersSimple = GoogleFonts.concertOne(
    fontSize: 16,
    //color: AppColors.options
  );

  static final price = GoogleFonts.concertOne(
    fontSize: 30,
    //color: AppColors.secondary
  );

  static final moneyText = GoogleFonts.patrickHand(
    fontSize: 23,
    //color: AppColors.secondary,
    fontWeight: FontWeight.w700
  );
}