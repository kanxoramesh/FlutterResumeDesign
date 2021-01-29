import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

enum PlatformType {
  MOBILE,
  TABLET,
  DESKTOP,
}

class PlatFormCheck {
  PlatformType _type;
  Size _screenSize;

  double _topHeight;
  double _topImageMaxWidth;
  Size _buttonSize;
  double _verticalMargin;
  double _horizontalMargin;
  double _space1;

  Size _itemSize;
  double _itemRadius;

  PlatFormCheck.of(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    if (_screenSize.width < 800) {
      _type = PlatformType.MOBILE;

      _topHeight = _screenSize.height * 0.5;
      _topImageMaxWidth = 160;
      _buttonSize = Size(_screenSize.width * 0.2, 30);
      _verticalMargin = _screenSize.height * 0.05;
      _horizontalMargin = 8;
      _space1 = _screenSize.height * 0.03;

      _itemSize = Size(20, 20);
      _itemRadius = 20;
    } else if (_screenSize.width >= 800 && _screenSize.width < 1200) {
      _type = PlatformType.TABLET;
    } else {
      _type = PlatformType.DESKTOP;

      _topHeight = _screenSize.height * 0.9;
      _topImageMaxWidth = _screenSize.height * 0.4;
      _buttonSize = Size(_screenSize.width * 0.15, _screenSize.width * 0.05);
      _verticalMargin = _screenSize.height * 0.13;
      _horizontalMargin = _screenSize.height * 0.13;
      _space1 = _screenSize.height * 0.04;

      _itemSize = Size(70, 70);
      _itemRadius = 80;
    }
    //calculate Dimension
  }

  PlatformType get type => _type;

  @override
  double get topHeight => _topHeight;

  @override
  Size get screenSize => _screenSize;

  @override
  Size get buttonSize => _buttonSize;

  @override
  double get topImageMaxWidth => _topImageMaxWidth;

  @override
  double get verticalMargin => _verticalMargin;

  @override
  double get horizontalMargin => _horizontalMargin;

  @override
  double get space1 => _space1;

  @override
  // TODO: implement itemRadius
  double get itemRadius => _itemRadius;

  @override
  // TODO: implement itemSize
  Size get itemSize => _itemSize;
}
