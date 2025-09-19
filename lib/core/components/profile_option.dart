import 'package:ecom_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileOptionWidget extends StatelessWidget {
  const ProfileOptionWidget({
    super.key,
    required this.onTap,
    required this.icon,
    required this.optiooonTitle,
  });
  final VoidCallback onTap;
  final IconData icon;
  final String optiooonTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: const BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: AppColors.kWhiteColor,
            ),
            Text(optiooonTitle,
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: AppColors.kWhiteColor)),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.kWhiteColor,
            )
          ],
        ),
      ),
    );
  }
}
