import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

enum PlatformType {
  MOBILE,
  TABLET,
  DESKTOP,
}

class PlatFormCheck {
  PlatformType _type;
  Dimension _dimension;

  PlatformType get type => _type;

  Dimension get dimension => _dimension;

  PlatFormCheck.of(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (size.width < 800) {
      _type = PlatformType.MOBILE;
      _dimension = MobileDimension(size);
    } else if (size.width >= 800 && size.width < 1200) {
      _type = PlatformType.TABLET;
      _dimension = DesktopDimension(size);
    } else {
      _type = PlatformType.DESKTOP;
      _dimension = DesktopDimension(size);
    }
    //calculate Dimension
  }
}

abstract class Dimension {
  final Size size;
  double topHeight;
  double topImageMaxWidth;
  Size buttonSize;
  double Title1;

  double Title2;

  double Title3;

  double Title4;

  double Title5;

  double Title6;

  double Title7;

  double Title8;

  double Title9;

  Dimension(this.size);
}

class MobileDimension extends Dimension {
  MobileDimension(Size size) : super(size);

  @override
  double get Title1 => 24.0;

  @override
  double get Title2 => 22.0;

  @override
  double get Title3 => 20.0;

  @override
  double get Title4 => 18.0;

  @override
  double get Title5 => 16.0;

  @override
  double get Title6 => 14.0;

  @override
  double get Title7 => 12.0;

  @override
  double get Title8 => 10.0;

  @override
  double get Title9 => 8.0;

  @override
  double get topHeight => size.height * 0.5;

  @override
  Size get buttonSize => Size(size.width * 0.2, 30);

  @override
  double get topImageMaxWidth => 160;
}

class DesktopDimension extends Dimension {
  DesktopDimension(Size size) : super(size);

  @override
  double get Title1 => 40.0;

  @override
  double get Title2 => 36.0;

  @override
  double get Title3 => 32.0;

  @override
  double get Title4 => 28.0;

  @override
  double get Title5 => 24.0;

  @override
  double get Title6 => 20.0;

  @override
  double get Title7 => 18.0;

  @override
  double get Title8 => 16.0;

  @override
  double get Title9 => 14.0;

  @override
  double get topHeight => size.height * 0.9;

  @override
  Size get buttonSize => Size(size.width * 0.15, size.width * 0.05);

  @override
  double get topImageMaxWidth => size.height * 0.4;
}
