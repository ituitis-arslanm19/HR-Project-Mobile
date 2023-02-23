import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _iconColor = Color.fromARGB(255, 155, 81, 224);
  static const Color _lightPrimaryColor = Color.fromARGB(255, 155, 81, 224);
  static const Color _lightPrimaryVariantColor = Color(0xFF546E7A);
  static const Color _lightSecondaryColor = Color.fromARGB(255, 155, 81, 224);
  static const Color _lightOnPrimaryColor = Colors.white;
  static const Color _lightPrimaryTextColor = Colors.black;

  static const Color _darkPrimaryColor = Colors.white24;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;

  static final ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            color: _darkSecondaryColor,
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
            fontSize: 26),
        color: _lightPrimaryVariantColor,
        iconTheme: IconThemeData(color: _lightOnPrimaryColor),
      ),
      colorScheme: const ColorScheme.light(
        primary: _lightPrimaryColor,
        primaryContainer: _lightPrimaryVariantColor,
        secondary: _lightSecondaryColor,
        onPrimary: _lightOnPrimaryColor,
      ),
      iconTheme: IconThemeData(
        color: _iconColor,
      ),
      textTheme: _lightTextTheme,
      dividerTheme: const DividerThemeData(color: Colors.black12));

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryVariantColor,
      appBarTheme: const AppBarTheme(
        color: _darkPrimaryVariantColor,
        iconTheme: IconThemeData(color: _darkOnPrimaryColor),
      ),
      colorScheme: const ColorScheme.dark(
        primary: _darkPrimaryColor,
        primaryContainer: _darkPrimaryVariantColor,
        secondary: _darkSecondaryColor,
        onPrimary: _darkOnPrimaryColor,
        background: Colors.white12,
      ),
      iconTheme: IconThemeData(
        color: _iconColor,
      ),
      textTheme: _darkTextTheme,
      dividerTheme: const DividerThemeData(color: Colors.black));

  static const TextTheme _lightTextTheme = TextTheme(
      headlineLarge: _lightScreenHeadingLargeTextStyle,
      headlineMedium: _lightScreenHeadingMediumTextStyle,
      headlineSmall: _lightScreenHeadingSmallTextStyle,
      bodyLarge: _lightScreenBodyLargeTextStyle,
      bodyMedium: _lightScreenBodyMediumTextStyle,
      bodySmall: _lightScreenBodySmallTextStyle);

  static final TextTheme _darkTextTheme = TextTheme(
    headlineMedium: _darkScreenHeading1TextStyle,
  );

  static const TextStyle _lightScreenHeadingLargeTextStyle = TextStyle(
      fontWeight: FontWeight.w700,
      color: _lightPrimaryTextColor,
      fontSize: 40,
      fontFamily: "OpenSans");

  static const TextStyle _lightScreenHeadingMediumTextStyle = TextStyle(
      fontWeight: FontWeight.w700,
      color: _lightPrimaryTextColor,
      fontSize: 24,
      fontFamily: "OpenSans");

  static const TextStyle _lightScreenHeadingSmallTextStyle = TextStyle(
      fontWeight: FontWeight.w700,
      color: _lightPrimaryTextColor,
      fontSize: 18,
      fontFamily: "OpenSans");

  static const TextStyle _lightScreenBodyLargeTextStyle = TextStyle(
      fontWeight: FontWeight.w500,
      color: _lightOnPrimaryColor,
      fontSize: 40,
      fontFamily: "OpenSans");

  static const TextStyle _lightScreenBodyMediumTextStyle = TextStyle(
      fontWeight: FontWeight.w500,
      color: _lightOnPrimaryColor,
      fontSize: 24,
      fontFamily: "OpenSans");

  static const TextStyle _lightScreenBodySmallTextStyle = TextStyle(
      fontWeight: FontWeight.w500,
      color: _lightOnPrimaryColor,
      fontSize: 18,
      fontFamily: "OpenSans");

  static final TextStyle _darkScreenHeading1TextStyle =
      _lightScreenHeadingMediumTextStyle.copyWith(color: _darkOnPrimaryColor);
}
