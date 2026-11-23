import 'package:facebook/core/input.dart';
import 'package:facebook/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const String routeName = '/login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Spacer(),
              Image.asset(
                "assets/images/FaceBook_logo.svg",
                width: 100,
                height: 100,
              ),
              SizedBox(height: 62),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Input(
                      hintText: "Email Address",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        }

                        final emailRegex = RegExp(
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                        );

                        if (!emailRegex.hasMatch(value.trim())) {
                          return "Please enter a valid email";
                        }

                        return null;
                      },
                    ),

                    SizedBox(height: 24),

                    Input(
                      hintText: "Password",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        }

                        if (value.length < 8) {
                          return "Password must be at least 8 characters";
                        }

                        if (!RegExp(r'[A-Z]').hasMatch(value)) {
                          return "Add at least one uppercase letter";
                        }

                        if (!RegExp(r'[a-z]').hasMatch(value)) {
                          return "Add at least one lowercase letter";
                        }

                        if (!RegExp(r'[0-9]').hasMatch(value)) {
                          return "Add at least one number";
                        }

                        if (!RegExp(r'[!@#$%^&*(),.?":{}|<>_\-+=]')
                            .hasMatch(value)) {
                          return "Add at least one special character";
                        }

                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    backgroundColor: AppColors.blue,
                    foregroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight(400),
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 16,
                    fontWeight: FontWeight(500),
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    side: BorderSide(color: AppColors.blue, width: 2.0),
                    backgroundColor: AppColors.white,
                    foregroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Creates Account",
                      style: TextStyle(
                        color: AppColors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Image.asset("assets/images/Meta Logo.png", width: 100),
            ],
          ),
        ),
      ),
    );
  }
}
