import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/core/components/TextFormfield_widget.dart';
import 'package:ecom_app/core/text_manager.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    const TextformfieldCustomWidget(
                      hintText: TextManager.emailhint,
                      ispassword: false,
                      labeltText: TextManager.email,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextformfieldCustomWidget(
                      hintText: TextManager.passwordhint,
                      ispassword: true,
                      labeltText: TextManager.password,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          TextManager.forgetpassword,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.kPrimaryColor,
                            fontSize: 18,
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
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
