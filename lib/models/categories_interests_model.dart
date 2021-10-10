import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesInterestModel {
  final int? id;
  final IconData? icon;
  final String? title;
  final String? description;

  CategoriesInterestModel({
    this.id,
    this.icon,
    this.title,
    this.description,
  });
}

List<CategoriesInterestModel> searchInterestList = [
  CategoriesInterestModel(
      id: 1,
      icon: Icons.home_outlined,
      title: "Home",
      description: 'Description here...'),
  CategoriesInterestModel(
      id: 2,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesInterestModel(
      id: 3,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesInterestModel(
      id: 4,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesInterestModel(
      id: 5,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesInterestModel(
      id: 6,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesInterestModel(
      id: 7,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesInterestModel(
      id: 8,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
  CategoriesInterestModel(
      id: 9,
      title: "Person",
      icon: Icons.person_outline,
      description: 'Description...'),
];
