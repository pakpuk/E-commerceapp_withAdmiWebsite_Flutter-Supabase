import 'package:ecom_app/core/components/Product_List.dart';
import 'package:ecom_app/core/components/custom_search_field.dart';
import 'package:ecom_app/core/text_manager.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  StoreScreen({super.key});
  TextEditingController searchFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
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
            const ProudctList()
          ],
        ),
      ),
    );
  }
}
