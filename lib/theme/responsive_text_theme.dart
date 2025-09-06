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

    const fontFamily = 'Montserrat'; // your font

    return TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32 * scale,
        color: Colors.grey[900],
        fontFamily: fontFamily,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28 * scale,
        color: Colors.grey[900],
        fontFamily: fontFamily,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24 * scale,
        color: Colors.grey[900],
        fontFamily: fontFamily,
      ),
      headlineMedium: TextStyle(
        fontSize: 22 * scale,
        fontWeight: FontWeight.bold,
        color: Colors.grey[900],
        fontFamily: fontFamily,
      ),
      bodyLarge: TextStyle(
        fontSize: 18 * scale,
        fontWeight: FontWeight.bold,
        color: Colors.grey[900],
        fontFamily: fontFamily,
      ),
      bodyMedium: TextStyle(
        fontSize: 16 * scale,
        fontWeight: FontWeight.bold,
        color: Colors.grey[900],
        fontFamily: fontFamily,
      ),
      bodySmall: TextStyle(
        fontSize: 14 * scale,
        fontWeight: FontWeight.bold,
        color: Colors.grey[900],
        fontFamily: fontFamily,
      ),
      labelLarge: TextStyle(
        fontSize: 14 * scale,
        fontWeight: FontWeight.bold,
        color: Colors.grey[900],
        fontFamily: fontFamily,
      ),
    );
  }
}
