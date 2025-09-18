import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/core/components/Product_List.dart';
import 'package:ecom_app/core/components/custom_search_field.dart';
import 'package:ecom_app/core/components/store_categories.dart';
import 'package:ecom_app/core/text_manager.dart';
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
          const SizedBox(
            height: 18,
          ),
          Image.asset("name"),
          const SizedBox(
            height: 12,
          ),
          const Text(
            TextManager.pproductstxt,
            style: TextStyle(
              fontSize: 22,
              color: AppColors.kBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Categoriewidget(),
          const SizedBox(
            height: 18,
          ),
          const Text(TextManager.recentlyaddedtxt),
          const SizedBox(
            height: 12,
          ),
          ProudctList()
        ],
      ),
    );
  }
}
