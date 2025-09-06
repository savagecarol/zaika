import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  final Widget child;
  final double mobileHorizontal;
  final double webFraction;
  final double vertical;

  const CustomPadding({
    super.key,
    required this.child,
    this.mobileHorizontal = 16.0,
    this.webFraction = 0.2,
    this.vertical = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final horizontalPadding =
        screenWidth < 600 ? mobileHorizontal : screenWidth * webFraction;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: vertical,
      ),
      child: child,
    );
  }
}
