import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/palette.dart';
import 'config/platform.dart';

const scaffold = Color(0xFFE0F2F1);
const accentColor = Color(0xFF437DF7);
const primaryColorDark = Color(0xff0A57F9);
const primaryColorLight = Color(0xFF7DA4F6);
const resumePrimary = const Color(0xff437DF7);
const buttonColor = Color(0xFF442B2D);

const kShrineErrorRed = Color(0xFFC5032B);

const kShrineSurfaceWhite = Color(0xFFFFFBFA);
const kShrineBackgroundWhite = Colors.white;

ThemeData buildResumeTheme(BuildContext context) {
  // var type = PlatFormCheck.of(context).type;
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    primaryColor: resumePrimary,
    accentColor: accentColor,
    scaffoldBackgroundColor: scaffold,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    cardColor: kShrineBackgroundWhite,
    textSelectionColor: accentColor,
    errorColor: kShrineErrorRed,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: buttonColor,
      colorScheme: base.colorScheme.copyWith(
        secondary: accentColor,
      ),
    ),
    buttonBarTheme: base.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    primaryIconTheme: base.iconTheme.copyWith(color: accentColor),
    textTheme: !kIsWeb
        ? _buildMobileTextTheme(base.textTheme)
        : _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline5: base.headline5.copyWith(
          fontWeight: FontWeight.w500,
        ),
        headline6: base.headline6.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyText1: base.bodyText1.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
        bodyText2: base.bodyText1.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: accentColor,
        bodyColor: accentColor,
      );
}

TextTheme _buildTextTheme(TextTheme base) {

  return base
      .copyWith(
    headline1: base.headline1
        .copyWith(fontSize: 40.0, fontWeight: FontWeight.bold),
    headline2: base.headline2
        .copyWith(fontSize: 36.0, fontWeight: FontWeight.bold),
    headline3: base.headline3
        .copyWith(fontSize: 32.0, fontWeight: FontWeight.bold),
    headline4: base.headline4
        .copyWith(fontSize: 28.0, fontWeight: FontWeight.bold),
    headline5: base.headline5
        .copyWith(fontSize: 24.0, fontWeight: FontWeight.bold),
    headline6: base.headline6
        .copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
    subtitle1: base.subtitle1.copyWith(
      fontSize: 18.0,
    ),
    bodyText1: base.bodyText1.copyWith(
      fontSize: 14.0,
    ),
    bodyText2: base.bodyText2.copyWith(
      fontSize: 12.0,
    ),
  )
      .apply(
    fontFamily: 'Rubik',
    displayColor: Color(0xffFAF9FB),
    bodyColor: Color(0xffFAF9FB),
  );
}

TextTheme _buildMobileTextTheme(TextTheme base) {
/*
  @override
  double get topHeight => size.height * 0.5;

  @override
  Size get buttonSize => Size(size.width * 0.2, 30);

  @override
  double get topImageMaxWidth => 160;

  @override
  double get verticalMargin => size.height * 0.05;

  @override
  double get horizontalMargin => 8;

  @override
  double get space1 => size.height * 0.03;

  @override
  // TODO: implement itemRadius
  double get itemRadius => 20;

  @override
  // TODO: implement itemSize
  Size get itemSize => Size(20, 20);*/

  return base
      .copyWith(
        headline1: base.headline1
            .copyWith(fontSize: 24.0, fontWeight: FontWeight.bold),
        headline2: base.headline2
            .copyWith(fontSize: 22.0, fontWeight: FontWeight.bold),
        headline3: base.headline3
            .copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
        headline4: base.headline4
            .copyWith(fontSize: 18.0, fontWeight: FontWeight.bold),
        headline5: base.headline5
            .copyWith(fontSize: 16.0, fontWeight: FontWeight.bold),
        headline6: base.headline6
            .copyWith(fontSize: 14.0, fontWeight: FontWeight.bold),
        subtitle1: base.subtitle1.copyWith(
          fontSize: 12.0,
        ),
        bodyText1: base.bodyText1.copyWith(
          fontSize: 10.0,
        ),
        bodyText2: base.bodyText2.copyWith(
          fontSize: 8.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: Color(0xffFAF9FB),
        bodyColor: Color(0xffFAF9FB),
      );
}
/*final theme = ThemeData(

);*/
