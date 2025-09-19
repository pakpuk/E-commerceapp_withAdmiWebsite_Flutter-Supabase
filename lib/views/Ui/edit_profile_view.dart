import 'package:ecom_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.kWhiteColor,
        ),
        title: Text("Edit Name"),
      ),
    );
  }
}
