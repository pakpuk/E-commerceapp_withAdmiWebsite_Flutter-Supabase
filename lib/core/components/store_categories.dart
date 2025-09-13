import 'package:ecom_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: AppColors.kPrimaryColor,
      foregroundColor: AppColors.kPrimaryColor,
    );
  }
}
