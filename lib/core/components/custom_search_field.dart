import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/core/text_manager.dart';
import 'package:flutter/material.dart';

class CustomSearchfield extends StatelessWidget {
  const CustomSearchfield({
    super.key,
    required this.fieldcontroller,
  });

  final TextEditingController fieldcontroller;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: fieldcontroller,
        decoration: InputDecoration(
          hintText: TextManager.searchbartxt,
          suffixIcon: Container(
            decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(8)),
            child: const Center(
                child:
                    Icon(Icons.search_rounded, color: AppColors.kWhiteColor)),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.kBordersideColor,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.kBordersideColor,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.kPrimaryColor,
                width: 2,
              )),
        ));
  }
}
