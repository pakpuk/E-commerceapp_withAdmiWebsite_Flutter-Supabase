import 'package:ecom_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class TextformfieldCustomWidget extends StatelessWidget {
  const TextformfieldCustomWidget({
    super.key,
    required this.hintText,
  });

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.kBordersideColor,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.kBordersideColor,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.kBordersideColor,
              ))),
    );
  }
}
