import 'package:flutter/material.dart';

class CustomBtnWidget extends StatelessWidget {
  CustomBtnWidget(
      {super.key,
      required this.width,
      required this.backgroundColor,
      required this.onTap,
      required this.title});
  final double width;
  final Color backgroundColor;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 72,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
