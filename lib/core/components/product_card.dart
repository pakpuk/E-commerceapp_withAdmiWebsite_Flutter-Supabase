import 'package:ecom_app/core/app_colors.dart';
import 'package:ecom_app/core/components/button_widget.dart';
import 'package:ecom_app/core/components/chache_image.dart';
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
              const ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                child: CacheImage(
                  url: '',
                ),
              ),
              Positioned(
                child: Container(
                  height: 52,
                  width: 72,
                  decoration: const BoxDecoration(
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
                  onPressed: onTap,
                  icon: isfavorite
                      ? Icon(Icons.favorite_border)
                      : Icon(Icons.favorite_outlined,
                          color: AppColors.KRedColor)),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(""),
                      SizedBox(
                        height: 6,
                      ),
                      Text("data"),
                    ],
                  ),
                  CustomBtnWidget(
                    width: 100,
                    backgroundColor: AppColors.kPrimaryColor,
                    onTap: () {},
                    title: 'Buy Now',
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
