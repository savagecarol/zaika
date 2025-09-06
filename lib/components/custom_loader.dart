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
    final double defaultSize = MediaQuery.of(context).size.width * 0.4;
    return Image.asset(
      imagePath,
      width: width ?? defaultSize,
      height: height ?? defaultSize,
      fit: fit,
    );
  }

}
