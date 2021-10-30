import 'package:fiverr/models/completed_model.dart';
import 'package:fiverr/services/completed_api.dart';
import 'package:flutter/widgets.dart';


enum HomeState {
  initial,
  loading,
  loaded,
  error,
}

class CompletedProvider extends ChangeNotifier {
  HomeState _homeState = HomeState.initial;
  List<CompletedModel> completedModel = [];
  String message = '';
  String vendorid ='';
  CompletedtProvider() {
   // _fetchCompleted();
  }
  CompletedProvider.initial({ String? userid}) {
    print(userid);
    _fetchCompleted(userid!);
  }



  HomeState get homeState => _homeState;

  Future<void> _fetchCompleted(String userid) async {
    // print(catid);
    _homeState = HomeState.loading;
    try {
      //await Future.delayed(Duration(seconds: 5));
      final apicompleted = await CompletedApi.instance.getAllCompleted(userid);
      completedModel = apicompleted!;

      _homeState = HomeState.loaded;
    } catch (e) {
      message = '$e';
      _homeState = HomeState.error;
    }
    notifyListeners();
  }
}
