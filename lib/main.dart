import 'package:facebook/core/theme/app_theme_manager.dart';
import 'package:facebook/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:facebook/modules/splash/splash.dart';
import 'package:facebook/modules/login/login.dart';

void main() {
  runApp(const FaceBook());
}

class FaceBook extends StatelessWidget {
  const FaceBook({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppTheme(),
      debugShowCheckedModeBanner: false,
      routes: {
        Splash.routeName: (context) => const Splash(),
        Login.routeName: (context) => const Login(),
        Home.routeName: (context) => const Home(),
      },
      initialRoute: Splash.routeName,
    );
  }
}
