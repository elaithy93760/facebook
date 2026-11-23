import 'package:facebook/core/theme/app_colors.dart';
import 'package:facebook/modules/login/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static const String routeName = '/splash';
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        Login.routeName,
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Image.asset(
                  "assets/images/FaceBook_logo.svg",
                  width: 100,
                  height: 100,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "From",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight(400),
                        color: AppColors.gray,
                      ),
                    ),
                    Image.asset("assets/images/Meta Logo.png", width: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
