import 'package:ecom_app/core/components/custom_search_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController fieldcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ListView(
        children: [CustomSearchfield(fieldcontroller: fieldcontroller)],
      ),
    );
  }
}
