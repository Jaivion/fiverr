import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesCategoryModel {
  final int? id;
  final IconData? icon;
  final String? title;
  final String? description;

  CategoriesCategoryModel({
    this.id,
    this.icon,
    this.title,
    this.description,
  });
}

List<CategoriesCategoryModel> searchCategoryList = [
  CategoriesCategoryModel(
      id: 1,
      icon: Icons.home_outlined,
      title: "Home",
      description: 'Description here...'),
  CategoriesCategoryModel(
      id: 2,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesCategoryModel(
      id: 3,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesCategoryModel(
      id: 4,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesCategoryModel(
      id: 5,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesCategoryModel(
      id: 6,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesCategoryModel(
      id: 7,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesCategoryModel(
      id: 8,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesCategoryModel(
      id: 9,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
];
