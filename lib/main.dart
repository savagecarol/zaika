import 'package:flutter/material.dart';
import 'package:zaika/pages/common/splash_page.dart';
import 'package:zaika/theme/app_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder( 
      builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: true,
          title: 'Zaika',
          theme: AppTheme.theme(context),
          home: const SplashPage(),
        );
      },
    );
  }
}
