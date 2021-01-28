import 'package:flutter/material.dart';

class Palette {
  static const Color scaffold = Color(0xFFE0F2F1);

  static const LinearGradient scaffoldGradient = LinearGradient(
      colors: [const Color(0xff437DF7), const Color(0xff51A4EE)]);

  static const Color online = Color(0xFF4BCB1F);
  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
  static const double PrimaryTitleSize=16;
  static const Color specialTitleColor= Color(0xff394562);
  static const Color specialdColor= Color(0xff0D0B4D);




  static const double SecondaryTitleSize=10;
  static const double SecondaryTitleSpacing=2;

}
