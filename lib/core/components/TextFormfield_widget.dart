import 'package:ecom_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class TextformfieldCustomWidget extends StatefulWidget {
  const TextformfieldCustomWidget({
    super.key,
    required this.hintText,
      this.isboscureText = false, this.eyeIcon,
  });

  final String hintText;
  final bool isboscureText;
  final IconData? eyeIcon;

  @override
  State<TextformfieldCustomWidget> createState() => _TextformfieldCustomWidgetState();
}

class _TextformfieldCustomWidgetState extends State<TextformfieldCustomWidget> {
  bool isboscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:isboscureText ,
      decoration: InputDecoration(
        
          hintText: widget.hintText,
          suffixIcon: isboscureText? IconButton(onPressed: (){}, icon: icon) ,
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
