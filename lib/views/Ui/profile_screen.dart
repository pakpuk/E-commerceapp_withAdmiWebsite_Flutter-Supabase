import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/core/components/profile_option.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.5,
              child: Card(
                color: AppColors.kWhiteColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(12),
                )),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.kPrimaryColor,
                        radius: 60,
                        child: Icon(
                          Icons.person,
                          color: AppColors.kWhiteColor,
                          size: 52,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Mohammed"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("user@gmail.com"),
                      const SizedBox(
                        height: 18,
                      ),
                      ProfileOptionWidget(
                          onTap: () {},
                          icon: Icons.person,
                          optiooonTitle: 'Edit Name'),
                      const SizedBox(
                        height: 12,
                      ),
                      ProfileOptionWidget(
                          onTap: () {},
                          icon: Icons.shopping_bag,
                          optiooonTitle: 'My Orders'),
                      const SizedBox(
                        height: 12,
                      ),
                      ProfileOptionWidget(
                          onTap: () {},
                          icon: Icons.person,
                          optiooonTitle: 'Log out'),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
