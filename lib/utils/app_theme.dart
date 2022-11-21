import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF21130d);
  static const Color primaryDark = Color(0xffFDA2C6);
  static const Color accent = Color(0xFF7bc03f);
  static const Color trackColor = Color(0xFFFEAE6D);
  static const Color myrtleGreen = Color(0xFF277E6C);
  static const Color wintergreen = Color(0xFF4F8D82);
  static const Color bgColor = Color(0xFFECEBE7);

  static ThemeData buildTheme() {
    final baseData = ThemeData.dark();
    return baseData.copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
        color: myrtleGreen,
        titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(const Size(300, 50)),
            backgroundColor: MaterialStateProperty.all(primary),
            shadowColor: MaterialStateProperty.all(primaryDark)),
      ),
      dividerTheme: baseData.dividerTheme.copyWith(thickness: 2),
      textTheme: baseData.textTheme,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accent),
    );
  }
}
