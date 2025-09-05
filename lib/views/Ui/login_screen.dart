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
            Text(
              TextManager.loginTitle,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Card(
              color: AppColors.kWhiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  TextformfieldCustomWidget(
                      hintText: TextManager.emailhint, ispassword: false),
                  SizedBox(
                    height: 10,
                  ),
                  TextformfieldCustomWidget(
                      hintText: TextManager.passwordhint, ispassword: true),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
