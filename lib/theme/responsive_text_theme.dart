import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

class ResponsiveTextTheme {
  static TextTheme getTextTheme(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // Breakpoints
    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1024;
    final isDesktop = width >= 1024;

    double scale = 1.0;
    if (isMobile) {
      scale = 0.9;
    } else if (isTablet) {
      scale = 1.0;
    } else if (isDesktop || kIsWeb) {
      scale = 1.2;
    }

    return TextTheme(
      displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 32 * scale),
      displayMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 28 * scale),
      displaySmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 24 * scale),
      headlineMedium: TextStyle(fontSize: 22 * scale, fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(fontSize: 18 * scale, fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(fontSize: 16 * scale, fontWeight: FontWeight.w400),
      bodySmall: TextStyle(fontSize: 14 * scale, fontWeight: FontWeight.w300),
      labelLarge: TextStyle(fontSize: 14 * scale, fontWeight: FontWeight.w500),
    );
  }
}
