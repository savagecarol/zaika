import 'package:flutter/material.dart';
import 'package:zaika/components/custom_loader.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(const Duration(seconds: 2), () {
        Get.offNamed('/login');
      });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLoader()
          ],
        ),
      ),
    );
  }
}