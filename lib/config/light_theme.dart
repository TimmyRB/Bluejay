import 'package:bluejay/config/themeing.dart';
import 'package:flutter/material.dart';

class LightTheme extends BlueThemeData {
  @override
  Color? primaryColor = Colors.black;

  @override
  Color? secondaryColor = const Color(0xFF4B4B4B);

  @override
  Color? backgroundColor = Colors.white;

  @override
  Color? cardColor = const Color(0xFFF3F3F3);

  @override
  Color? boxColor = const Color(0xFFE0E0E0);

  @override
  String? fontFamily = 'UberMoveText';

  @override
  String? package = 'bluejay';

  @override
  InputDecorationTheme? inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFE8E8E8),
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
      package: 'bluejay',
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Color(0xFF5E5E5E),
    ),
    hintStyle: const TextStyle(
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Color(0xFF5E5E5E),
    ),
  );

  @override
  TextTheme? textTheme = const TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 96,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      color: Colors.black,
      fontSize: 52,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      color: Colors.black,
      fontSize: 44,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
    ),
    headlineLarge: TextStyle(
      color: Colors.black,
      fontSize: 40.0,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      color: Colors.black,
      fontSize: 28.0,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontFamily: 'UberMove',
      package: 'bluejay',
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
    ),
    titleLarge: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontFamily: 'UberMoveText',
      package: 'bluejay',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
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
      }
      return Colors.white;
    }),
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const Color(0xFFF3F3F3);
      } else if (states.contains(MaterialState.pressed)) {
        return const Color(0xFF333333);
      }
      return Colors.black;
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
        return Colors.black;
      }
      return Colors.black;
    }),
    overlayColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return const Color(0xFFEBEBEB);
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
