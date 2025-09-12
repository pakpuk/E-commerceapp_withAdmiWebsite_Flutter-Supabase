import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/core/components/TextFormfield_widget.dart';
import 'package:ecom_app/core/extensions/navigator_route.dart';
import 'package:ecom_app/core/text_manager.dart';
import 'package:ecom_app/views/Ui/home/main_home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                TextManager.loginTitle,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Card(
                margin: const EdgeInsets.all(24),
                color: AppColors.kWhiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      TextformfieldCustomWidget(
                        hintText: TextManager.emailhint,
                        ispassword: false,
                        labeltText: TextManager.email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          }
                          final emailRegex = RegExp(
                              r'^[^@\s]+@[^@\s]+\.[^@\s]+$'); // simple email regex
                          if (!emailRegex.hasMatch(value)) {
                            return 'Enter a valid email';
                          }
                          return null;
                        },
                        controller: emailController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextformfieldCustomWidget(
                        hintText: TextManager.passwordhint,
                        ispassword: true,
                        labeltText: TextManager.password,
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This is a required field';
                          }
                          if (value.length < 8) {
                            return "pleas enter a valid password";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              TextManager.forgetpassword,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.kPrimaryColor,
                                fontSize: 18,
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(TextManager.login),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                color: AppColors.kPrimaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_right_alt,
                                  color: AppColors.kWhiteColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(TextManager.googlelogin),
                          InkWell(
                            onTap: () {
                              context.push(MainHomeScreen());
                            },
                            child: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                color: AppColors.kPrimaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_right_alt,
                                  color: AppColors.kWhiteColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RichText(
                        text: TextSpan(
                            text: TextManager.donthaveacc,
                            style: TextStyle(fontWeight: FontWeight.w500),
                            children: [
                              TextSpan(
                                  text: TextManager.signup,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.kPrimaryColor))
                            ]),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
