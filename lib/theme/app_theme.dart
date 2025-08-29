import 'package:flutter/material.dart';
import 'package:zaika/theme/responsive_text_theme.dart';

// 🎨 Centralized color palette
class AppColors {
  static const Color primary = Color.fromARGB(255, 211, 68, 52); // light purple
  static const Color background = Colors.white;
  static const Color textOnPrimary = Colors.white;
}

class AppTheme {
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      fontFamily: 'Montserrat',
      textTheme: ResponsiveTextTheme.getTextTheme(context),
      brightness: Brightness.light,

      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,

      // AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textOnPrimary,
      ),

      // Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textOnPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),

      // FAB
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textOnPrimary,
      ),

      // Color scheme (for widgets that rely on it)
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
      ),
    );
  }
}
