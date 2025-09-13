import 'package:ecom_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class Categoriewidget extends StatelessWidget {
  const Categoriewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: AppColors.kPrimaryColor,
          foregroundColor: AppColors.kPrimaryColor,
        ),
      ],
    );
  }
}
