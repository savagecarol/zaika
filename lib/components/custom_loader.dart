import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget {
  final double? width;
  final double? height;
  final String imagePath;
  final BoxFit fit;

  const CustomLoader({
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.imagePath = 'assets/gif/icon.gif',
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    double defaultSize;
    if (screenWidth < 600) {
      defaultSize = screenWidth * 0.4; // ~40% of screen
    } else if (screenWidth < 1024) {
      defaultSize = screenWidth * 0.25; // ~25% of screen
    } else {
      defaultSize = screenWidth * 0.15; // ~15% of screen
    }

    return Image.asset(
      imagePath,
      width: width ?? defaultSize,
      height: height ?? defaultSize,
      fit: fit,
    );
  }
}
