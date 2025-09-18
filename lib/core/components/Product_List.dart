import 'package:ecom_app/core/components/product_card.dart';
import 'package:flutter/material.dart';

class ProudctList extends StatelessWidget {
  const ProudctList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return ProductCard(isfavorite: false, onTap: () {});
      },
    );
  }
}
