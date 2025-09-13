import 'package:ecom_app/core/components/custom_search_field.dart';
import 'package:ecom_app/core/components/store_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController fieldcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ListView(
        children: [
          CustomSearchfield(fieldcontroller: fieldcontroller),
          SizedBox(
            height: 18,
          ),
          Image.asset("name"),
          SizedBox(
            height: 18,
          ),
          ListView.builder(
            itemBuilder: Categoriewidget(),
            scrollDirection: Axis.horizontal,
          )
        ],
      ),
    );
  }
}
