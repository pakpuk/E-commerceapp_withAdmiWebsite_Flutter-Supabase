import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/core/components/Product_List.dart';
import 'package:ecom_app/core/components/custom_search_field.dart';
import 'package:ecom_app/core/text_manager.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  MyWidget({super.key});
  final TextEditingController searchFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Orders",
          style: TextStyle(
              fontSize: 22,
              color: AppColors.kWhiteColor,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [
          const Center(
              child: Text(
            TextManager.wlcmtext,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          )),
          const SizedBox(
            height: 12,
          ),
          CustomSearchfield(fieldcontroller: searchFieldController),
          const SizedBox(
            height: 18,
          ),
          ProudctList(
            onTap: () {},
          )
        ],
      ),
    );
  }
}
