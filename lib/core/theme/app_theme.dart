import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF3D5AFE);
  static const Color errorColor = Color(0xFFD32F2F);

  static ThemeData get lightTheme {
    final base = ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: base,
      scaffoldBackgroundColor: const Color(0xFFF7F8FC),
      inputDecorationTheme: _inputDecorationTheme(base),
      elevatedButtonTheme: _elevatedButtonTheme(base),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
      ),
    );
  }

  static ThemeData get darkTheme {
    final base = ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.dark,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: base,
      inputDecorationTheme: _inputDecorationTheme(base),
      elevatedButtonTheme: _elevatedButtonTheme(base),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
    );
  }

  static InputDecorationTheme _inputDecorationTheme(ColorScheme scheme) {
    final radius = BorderRadius.circular(12);
    OutlineInputBorder border(Color color) => OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: color),
        );
    return InputDecorationTheme(
      filled: true,
      fillColor: scheme.surfaceContainerHighest.withValues(alpha: 0.4),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: border(Colors.transparent),
      enabledBorder: border(Colors.transparent),
      focusedBorder: border(scheme.primary),
      errorBorder: border(errorColor),
      focusedErrorBorder: border(errorColor),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonTheme(ColorScheme scheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: scheme.primary,
        foregroundColor: scheme.onPrimary,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
