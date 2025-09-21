import 'package:flutter/material.dart';

class FurnitureAppLandingPageStyles {
  furnitureAppLandingPageStyles(
      Color textColor, FontWeight fontweight, double fontsize,
      {double letterspacing = 0}) {
    return TextStyle(
        color: textColor,
        fontWeight: fontweight,
        fontSize: fontsize,
        overflow: TextOverflow.ellipsis,
        fontStyle: FontStyle.normal,
        letterSpacing: letterspacing);
  }
}
