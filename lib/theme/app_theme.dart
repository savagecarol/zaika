import 'package:flutter/material.dart';
import 'package:zaika/theme/responsive_text_theme.dart';

class AppColors {
  static const Color primary = Color.fromARGB(255, 211, 68, 52); 
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


      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textOnPrimary,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textOnPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textOnPrimary,
      ),

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
      ),
    );
  }
}
