import 'package:bluejay/config/themeing.dart';
import 'package:flutter/material.dart';

class DarkTheme extends BlueThemeData {
  @override
  Color? primaryColor = Colors.white;

  @override
  Color? secondaryColor = const Color(0xFFCDCDCD);

  @override
  Color? backgroundColor = const Color(0xFF161616);

  @override
  Color? cardColor = const Color(0xFF252525);

  @override
  Color? boxColor = const Color(0xFF303030);

  @override
  Color? splashColor = Colors.transparent;

  @override
  Color? highlightColor = Colors.transparent;

  @override
  Color? hoverColor = Colors.transparent;

  @override
  String? fontFamily = 'UberMoveText';

  @override
  String? package = 'bluejay';

  @override
  InputDecorationTheme? inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF1F1F1F),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 14.0,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
    floatingLabelBehavior: FloatingLabelBehavior.never,
    labelStyle: const TextStyle(
      fontFamily: 'UberMoveText',
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Color(0xFFCDCDCD),
    ),
    hintStyle: const TextStyle(
      fontFamily: 'UberMoveText',
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Color(0xFFCDCDCD),
    ),
  );

  @override
  BottomNavigationBarThemeData? bottomNavigationBarTheme =
      BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: const Color(0xFF161616),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white.withOpacity(0.5),
    showSelectedLabels: false,
    showUnselectedLabels: false,
  );

  @override
  TextTheme? textTheme = const TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 96,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontSize: 52,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      color: Colors.white,
      fontSize: 44,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
    ),
    headlineLarge: TextStyle(
      color: Colors.white,
      fontSize: 40.0,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      color: Colors.white,
      fontSize: 28.0,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),
    titleLarge: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w400,
    ),
  );

  @override
  ButtonStyle? filledButtonStyle = ButtonStyle(
    splashFactory: NoSplash.splashFactory,
    elevation: MaterialStateProperty.all<double>(0.0),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 16.0,
      ),
    ),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontFamily: 'UberMoveText',
        package: 'bluejay',
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    foregroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const Color(0xFFA6A6A6);
      } else if (states.contains(MaterialState.pressed)) {
        return Colors.black;
      }
      return Colors.black;
    }),
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const Color(0xFF252525);
      } else if (states.contains(MaterialState.pressed)) {
        return const Color(0xFFE3E3E3);
      }
      return Colors.white;
    }),
    minimumSize: MaterialStateProperty.all<Size>(
      const Size.fromHeight(0.0),
    ),
  );

  @override
  ButtonStyle? elevatedButtonStyle;

  @override
  ButtonStyle? textButtonStyle = ButtonStyle(
    splashFactory: NoSplash.splashFactory,
    elevation: MaterialStateProperty.all<double>(0.0),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 16.0,
      ),
    ),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontFamily: 'UberMoveText',
        package: 'bluejay',
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    foregroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const Color(0xFFA6A6A6);
      } else if (states.contains(MaterialState.pressed)) {
        return Colors.white;
      }
      return Colors.white;
    }),
    overlayColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return const Color(0xFF252525);
      }
      return Colors.transparent;
    }),
    minimumSize: MaterialStateProperty.all<Size>(
      const Size.fromHeight(0.0),
    ),
  );

  @override
  ButtonStyle? outlinedButtonStyle;
}
