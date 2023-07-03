import 'package:bluejay/config/themeing.dart';
import 'package:flutter/material.dart';

class DarkTheme extends BlueThemeData {
  @override
  Color? primaryColor = Colors.white;

  @override
  Color? secondaryColor = const Color(0xFFEAF2EF);

  @override
  Color? backgroundColor = const Color(0xFF161616);

  @override
  Color? cardColor = const Color(0xFF212121);

  @override
  Color? boxColor = const Color(0xFF292C2B);

  @override
  TextTheme? textTheme = Typography.whiteCupertino;

  @override
  ButtonStyle? filledButtonStyle = ButtonStyle(
    splashFactory: NoSplash.splashFactory,
    overlayColor: MaterialStateProperty.all(Colors.transparent),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
    ),
    textStyle: MaterialStateProperty.all(
      const TextStyle(
        fontSize: 15,
        letterSpacing: 0.75,
        fontWeight: FontWeight.w600,
      ),
    ),
    iconSize: MaterialStateProperty.all(18),
    foregroundColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return const Color(0xFFFFFFFF).withOpacity(0.5);
        } else {
          return const Color(0xFFFFFFFF);
        }
      },
    ),
    backgroundColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return const Color(0xFF007AFF).withOpacity(0.5);
        } else if (states.contains(MaterialState.pressed)) {
          return const Color(0xFF0057CC);
        } else if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.focused)) {
          return const Color(0xFF1E8BFF);
        } else {
          return const Color(0xFF007AFF);
        }
      },
    ),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide.none,
      ),
    ),
    elevation: MaterialStateProperty.all(0),
  );

  @override
  ButtonStyle? elevatedButtonStyle;

  @override
  ButtonStyle? textButtonStyle = ButtonStyle(
    splashFactory: NoSplash.splashFactory,
    overlayColor: MaterialStateProperty.all(Colors.transparent),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
    ),
    textStyle: MaterialStateProperty.all(
      const TextStyle(
        fontSize: 15,
        letterSpacing: 0.75,
        fontWeight: FontWeight.w600,
      ),
    ),
    iconSize: MaterialStateProperty.all(18),
    foregroundColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return const Color(0xFFFFFFFF).withOpacity(0.5);
        } else if (states.contains(MaterialState.pressed)) {
          return const Color(0xFF999999);
        } else if (states.contains(MaterialState.hovered) ||
            states.contains(MaterialState.focused)) {
          return const Color(0xFFCCCCCC);
        } else {
          return const Color(0xFFFFFFFF);
        }
      },
    ),
    backgroundColor: MaterialStateProperty.all(Colors.transparent),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide.none,
      ),
    ),
    elevation: MaterialStateProperty.all(0),
  );

  @override
  ButtonStyle? outlinedButtonStyle;
}
