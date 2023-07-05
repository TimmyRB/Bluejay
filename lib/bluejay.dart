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

class Bluejay {
  static ThemeData lightTheme({OverrideTheme? overrideColors}) {
    LightTheme lightTheme = LightTheme();

    return _themeData(lightTheme, Brightness.light, overrideColors);
  }

  static ThemeData darkTheme({OverrideTheme? overrideColors}) {
    DarkTheme darkTheme = DarkTheme();

    return _themeData(darkTheme, Brightness.dark, overrideColors);
  }

  static ThemeData _themeData(
    BlueThemeData theme,
    Brightness brightness,
    OverrideTheme? overrideTheme,
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
      cardTheme: CardTheme(
        color: overrideTheme?.cardColor ?? theme.cardColor,
        elevation: 0.0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      dividerColor: overrideTheme?.secondaryColor ?? theme.secondaryColor,
      inputDecorationTheme:
          overrideTheme?.inputDecorationTheme ?? theme.inputDecorationTheme,
      filledButtonTheme: FilledButtonThemeData(
        style: overrideTheme?.filledButtonStyle ?? theme.filledButtonStyle,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: overrideTheme?.elevatedButtonStyle ?? theme.filledButtonStyle,
      ),
      textButtonTheme: TextButtonThemeData(
        style: overrideTheme?.textButtonStyle ?? theme.textButtonStyle,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: overrideTheme?.outlinedButtonStyle ?? theme.textButtonStyle,
      ),
    );
  }
}
