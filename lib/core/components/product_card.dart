import 'package:ecom_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    super.key,
    required this.isfavorite,
    required this.onTap,
  });
  final bool isfavorite;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  child: Image(
                    image: NetworkImage("url"),
                    fit: BoxFit.cover,
                  )),
              Positioned(
                child: Container(
                  height: 52,
                  width: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: AppColors.kPrimaryColor,
                  ),
                  child: Center(
                    child: Text(
                      "20%",
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('data'),
              IconButton(
                  onPressed: () {},
                  icon: isfavorite
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_outlined,
                          color: AppColors.KRedColor))
            ],
          ),
        ],
      ),
    );
  }
}
