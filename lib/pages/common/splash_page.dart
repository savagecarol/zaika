import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset(
      'assets/gif/icon.gif',
     width: MediaQuery.of(context).size.width * 0.2,  
      height: MediaQuery.of(context).size.width * 0.2,
  fit: BoxFit.contain,
    )
          ],
        ),
      ),
    );
  }
}