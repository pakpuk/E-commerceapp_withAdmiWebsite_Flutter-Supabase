import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/core/components/custom_search_field.dart';
import 'package:ecom_app/core/components/store_categories.dart';
import 'package:ecom_app/core/models/category_model.dart';
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
          SizedBox(
            height: 18,
          ),
          Image.asset("name"),
          SizedBox(
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
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: AppColors.kPrimaryColor,
                      foregroundColor: AppColors.kPrimaryColor,
                      child: Icon(
                        categories[index].icon,
                        size: 38,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      categories[index].title,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
