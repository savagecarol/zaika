import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zaika/pages/common/login_page.dart';
import 'package:zaika/pages/common/splash_page.dart';
import 'package:zaika/theme/app_theme.dart';
import 'package:zaika/theme/responsive_text_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder( 
      builder: (context) {
        return GetMaterialApp(
          title: 'Zaika',
         theme: AppTheme.theme(context).copyWith(
                textTheme: ResponsiveTextTheme.getTextTheme(context),
          ),
          home: const SplashPage(),
          debugShowCheckedModeBanner: false,
          initialRoute: '/splash',
        getPages: [
          GetPage(name: '/splash', page: () => const SplashPage()),
          GetPage(name: '/login', page: () =>  LoginPage()),
           // Add more pages here
          ],

        );
      },
    );
  }
}
