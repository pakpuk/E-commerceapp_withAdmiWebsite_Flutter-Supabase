import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/core/components/TextFormfield_widget.dart';
import 'package:ecom_app/core/components/button_widget.dart';
import 'package:ecom_app/core/extensions/navigator_route.dart';
import 'package:ecom_app/views/Ui/profile_screen.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  EditProfileView({super.key});
  final TextEditingController editnamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.kWhiteColor,
          ),
          onPressed: () {
            context.pop(const ProfileScreen());
          },
        ),
        title: const Text(
          "Edit Name",
          style: TextStyle(
            color: AppColors.kWhiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextformfieldCustomWidget(
                hintText: 'Enter Name',
                ispassword: false,
                controller: editnamecontroller,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomBtnWidget(
                  width: 300,
                  backgroundColor: AppColors.kPrimaryColor,
                  onTap: () {},
                  title: 'Update name')
            ],
          ),
        ),
      ),
    );
  }
}
