import 'package:flutter/material.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData;
  static double? deviceWidth;
  static double? deviceHeight;
  static bool? isDarkMode;
  static bool? isLightMode;
  static Orientation? orientation;
  static Brightness? brightness;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    deviceWidth = _mediaQueryData.size.width / 100;
    deviceHeight = _mediaQueryData.size.height / 100;
    orientation = _mediaQueryData.orientation;
    brightness = _mediaQueryData.platformBrightness;

    // isDarkMode = false;

    // isDarkMode = _mediaQueryData.platformBrightness == Brightness.dark;
    // isLightMode = _mediaQueryData.platformBrightness == Brightness.light;
  }
}