
import 'package:fiverr/models/category_model.dart';
import 'package:fiverr/services/categories_api.dart';
import 'package:flutter/widgets.dart';

enum HomeState {
  initial,
  loading,
  loaded,
  error,
}

class CategoryProvider extends ChangeNotifier {
  HomeState _homeState = HomeState.initial;
  List<CategoryModel> categories = [];
  String message = '';

  CategoryProvider() {
    _fetchCat();
  }

  HomeState get homeState => _homeState;

  Future<void> _fetchCat() async {
    _homeState = HomeState.loading;
    try {
      //await Future.delayed(Duration(seconds: 5));
      final apicats = await CategoriesApi.instance.getAllCategories();
      categories = apicats!;
      _homeState = HomeState.loaded;
    } catch (e) {
      message = '$e';
      _homeState = HomeState.error;
    }
    notifyListeners();
  }
}
