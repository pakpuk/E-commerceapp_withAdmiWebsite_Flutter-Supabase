import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/core/models/category_model.dart';
import 'package:flutter/material.dart';

class Categoriewidget extends StatelessWidget {
  const Categoriewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
