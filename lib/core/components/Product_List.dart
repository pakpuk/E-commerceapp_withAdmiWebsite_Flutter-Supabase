import 'package:ecom_app/core/components/product_card.dart';
import 'package:flutter/material.dart';

class ProudctList extends StatelessWidget {
  ProudctList({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return ProductCard(isfavorite: false, onTap: onTap);
      },
    );
  }
}
