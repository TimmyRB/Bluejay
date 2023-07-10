import 'package:bluejay/config/themeing.dart';
import 'package:bluejay/config/dark_theme.dart';
import 'package:bluejay/config/light_theme.dart';
import 'package:bluejay/config/override_colors.dart';
import 'package:flutter/material.dart';

export 'package:bluejay/components/horizontal_actions.dart';
export 'package:bluejay/components/horizontal_action.dart';
export 'package:bluejay/components/title_with_filter.dart';
export 'package:bluejay/components/breakdown.dart';
export 'package:bluejay/components/horizontal_icon_text.dart';
export 'package:bluejay/components/code_block.dart';
export 'package:bluejay/components/copy_button.dart';
export 'package:bluejay/components/password_field.dart';
export 'package:bluejay/components/search_field.dart';

class Bluejay {
  static ThemeData lightTheme({
    OverrideTheme? overrideColors,
    bool merge = true,
  }) {
    LightTheme lightTheme = LightTheme();

    return _themeData(lightTheme, Brightness.light, overrideColors, merge);
  }

  static ThemeData darkTheme({
    OverrideTheme? overrideColors,
    bool merge = true,
  }) {
    DarkTheme darkTheme = DarkTheme();

    return _themeData(darkTheme, Brightness.dark, overrideColors, merge);
  }

  static ThemeData _themeData(
    BlueThemeData theme,
    Brightness brightness,
    OverrideTheme? overrideTheme,
    bool merge,
  ) {
    return ThemeData(
      brightness: brightness,
      colorScheme: ColorScheme.fromSeed(
        brightness: brightness,
        seedColor: overrideTheme?.primaryColor ?? theme.primaryColor!,
        primary: overrideTheme?.primaryColor ?? theme.primaryColor,
        secondary: overrideTheme?.secondaryColor ?? theme.secondaryColor,
      ),
      scaffoldBackgroundColor:
          overrideTheme?.backgroundColor ?? theme.backgroundColor,
      highlightColor: overrideTheme?.boxColor ?? theme.boxColor,
      fontFamily: overrideTheme?.fontFamily ?? theme.fontFamily,
      package: overrideTheme?.package ?? theme.package,
      textTheme: overrideTheme?.textTheme ?? theme.textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor:
            overrideTheme?.backgroundColor ?? theme.backgroundColor,
        titleTextStyle: TextStyle(
          color: overrideTheme?.primaryColor ?? theme.primaryColor,
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          fontFamily: 'UberMoveText',
          package: 'bluejay',
        ),
        elevation: 0.0,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: overrideTheme?.primaryColor ?? theme.primaryColor,
        ),
      ),
      cardTheme: overrideTheme?.cardTheme ??
          CardTheme(
            color: overrideTheme?.cardColor ?? theme.cardColor,
            elevation: 0.0,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
      tabBarTheme: overrideTheme?.tabBarTheme ??
          TabBarTheme(
            splashFactory: NoSplash.splashFactory,
            labelColor: overrideTheme?.backgroundColor ?? theme.backgroundColor,
            unselectedLabelColor:
                overrideTheme?.secondaryColor ?? theme.secondaryColor,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: overrideTheme?.primaryColor ?? theme.primaryColor,
            ),
          ),
      dividerColor: overrideTheme?.secondaryColor ?? theme.secondaryColor,
      inputDecorationTheme:
          overrideTheme?.inputDecorationTheme ?? theme.inputDecorationTheme,
      filledButtonTheme: FilledButtonThemeData(
        style: merge
            ? (overrideTheme?.filledButtonStyle
                    ?.merge(theme.filledButtonStyle) ??
                theme.filledButtonStyle)
            : (overrideTheme?.filledButtonStyle ?? theme.filledButtonStyle),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: merge
            ? (overrideTheme?.elevatedButtonStyle
                    ?.merge(theme.filledButtonStyle) ??
                theme.filledButtonStyle)
            : (overrideTheme?.elevatedButtonStyle ?? theme.filledButtonStyle),
      ),
      textButtonTheme: TextButtonThemeData(
        style: merge
            ? (overrideTheme?.textButtonStyle?.merge(theme.textButtonStyle) ??
                theme.textButtonStyle)
            : (overrideTheme?.textButtonStyle ?? theme.textButtonStyle),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: merge
            ? (overrideTheme?.outlinedButtonStyle
                    ?.merge(theme.textButtonStyle) ??
                theme.textButtonStyle)
            : (overrideTheme?.outlinedButtonStyle ?? theme.textButtonStyle),
      ),
    );
  }
}
