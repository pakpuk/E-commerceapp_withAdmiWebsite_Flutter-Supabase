import 'package:ecom_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class TextformfieldCustomWidget extends StatefulWidget {
  const TextformfieldCustomWidget({
    super.key,
    required this.hintText,
    this.isboscureText = false,
    this.eyeIcon,
    required this.ispassword,
    required this.labeltText,
    this.validator,
  });

  final String hintText;
  final bool isboscureText;
  final IconData? eyeIcon;
  final bool ispassword;
  final String labeltText;
  final FormFieldValidator<String>? validator;

  @override
  State<TextformfieldCustomWidget> createState() =>
      _TextformfieldCustomWidgetState();
}

class _TextformfieldCustomWidgetState extends State<TextformfieldCustomWidget> {
  bool isboscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      obscureText: widget.ispassword ? isboscureText : false,
      decoration: InputDecoration(
          labelText: widget.labeltText,
          hintText: widget.hintText,
          suffixIcon: widget.ispassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isboscureText = !isboscureText;
                    });
                  },
                  icon: Icon(
                    isboscureText ? Icons.visibility_off : Icons.visibility,
                  ))
              : null,
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
              ))),
    );
  }
}
