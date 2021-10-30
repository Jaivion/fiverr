import 'dart:convert';

import 'package:fiverr/models/category_model.dart';

import 'package:http/http.dart' as http;

class CategoriesApi {
  static late CategoriesApi _instance;

  CategoriesApi._();
  static CategoriesApi get instance {
    _instance = CategoriesApi._();
    return _instance;
  }

  Future<List<CategoryModel>?> getAllCategories() async {
    print('http getting all categories...');
    var response = await http.get(
        Uri.parse('https://easemysalon.info/flutter_api/user/categories_list'));
    print('got all categories.');
    final data = json.decode(response.body);
    print("res data $data");
    final List responseBody = data['ServiceData'];
    print("res body $responseBody");
    return responseBody.map((e) => CategoryModel.fromJson(e)).toList();
  }
}
