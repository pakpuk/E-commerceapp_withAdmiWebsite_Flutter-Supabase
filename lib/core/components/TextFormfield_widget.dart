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
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
