import 'package:flutter/material.dart';

abstract class BlueThemeData {
  abstract final Color? primaryColor;
  abstract final Color? secondaryColor;
  abstract final Color? backgroundColor;
  abstract final Color? cardColor;
  abstract final Color? boxColor;
  abstract final Color? splashColor;
  abstract final Color? highlightColor;
  abstract final Color? hoverColor;
  abstract final String? fontFamily;
  abstract final String? package;
  abstract final TextTheme? textTheme;
  abstract final InputDecorationTheme? inputDecorationTheme;
  abstract final BottomNavigationBarThemeData? bottomNavigationBarTheme;
  abstract final ButtonStyle? filledButtonStyle;
  abstract final ButtonStyle? elevatedButtonStyle;
  abstract final ButtonStyle? textButtonStyle;
  abstract final ButtonStyle? outlinedButtonStyle;
}
