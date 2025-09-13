import 'package:ecom_app/core/text_manager.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final IconData icon;

  CategoryModel({required this.title, required this.icon});
}

List<CategoryModel> categories = [
  CategoryModel(title: TextManager.sporttxt, icon: Icons.sports),
  CategoryModel(title: TextManager.electronictxt, icon: Icons.tv),
  CategoryModel(title: TextManager.collectiontxt, icon: Icons.collections),
  CategoryModel(title: TextManager.booktxt, icon: Icons.book),
  CategoryModel(title: TextManager.gamestxt, icon: Icons.games),
];
