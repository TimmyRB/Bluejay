import 'package:bluejay/config/themeing.dart';
import 'package:flutter/material.dart';

class OverrideTheme extends BlueThemeData {
  @override
  Color? primaryColor;

  @override
  Color? secondaryColor;

  @override
  Color? backgroundColor;

  @override
  Color? cardColor;

  @override
  Color? splashColor;

  @override
  Color? highlightColor;

  @override
  Color? hoverColor;

  CardTheme? cardTheme;

  TabBarTheme? tabBarTheme;

  @override
  Color? boxColor;

  @override
  String? fontFamily;

  @override
  String? package;

  @override
  TextTheme? textTheme;

  @override
  InputDecorationTheme? inputDecorationTheme;

  @override
  BottomNavigationBarThemeData? bottomNavigationBarTheme;

  @override
  ButtonStyle? filledButtonStyle;

  @override
  ButtonStyle? elevatedButtonStyle;

  @override
  ButtonStyle? textButtonStyle;

  @override
  ButtonStyle? outlinedButtonStyle;

  OverrideTheme({
    this.primaryColor,
    this.secondaryColor,
    this.backgroundColor,
    this.cardColor,
    this.boxColor,
    this.filledButtonStyle,
    this.elevatedButtonStyle,
    this.textButtonStyle,
    this.outlinedButtonStyle,
  });
}
