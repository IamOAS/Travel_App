import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';

class SizeConfig {
  static double screenWidth;
  static double screenHeight;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;
  static double screenWidthSafe;
  static double screenHeightSafe;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    //
    _safeAreaHorizontal = MediaQuery.of(context).padding.left +
        MediaQuery.of(context).padding.right;
    _safeAreaVertical = MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom;
    //
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
    //
    screenWidthSafe = (screenWidth - _safeAreaHorizontal);
    screenHeightSafe = (screenHeight - _safeAreaVertical);
  }

  double safeBlockHorizontalFunc() {
    return safeBlockHorizontal;
  }

  double safeBlockVerticalFunc() {
    return safeBlockVertical;
  }

  double numOverSafeBlockVertical(double num) {
    return ((double.parse(
          (num / heightBlockGiven).toStringAsFixed(4),
        )) *
        safeBlockVertical);
  }

  double numOverSafeBlockHorizontal(double num) {
    return ((double.parse(
          (num / widthBlockGiven).toStringAsFixed(4),
        )) *
        safeBlockHorizontal);
  }

  double screenWidthSafeFunc() {
    return screenWidthSafe;
  }

  double screenHeightSafeFunc() {
    return screenHeightSafe;
  }
}
