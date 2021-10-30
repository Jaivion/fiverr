import 'package:fiverr/models/rejected_model.dart';
import 'package:fiverr/services/rejected_api.dart';
import 'package:flutter/widgets.dart';

enum HomeState {
  initial,
  loading,
  loaded,
  error,
}

class RejectedProvider extends ChangeNotifier {
  HomeState _homeState = HomeState.initial;
  List<RejectedModel> rejectedModel = [];
  String message = '';
  String vendorid = '';
  RejectedProvider() {
    // _fetchSalon(vendorid);
  }
  RejectedProvider.initial({String? userid}) {
    print(userid);
    _fetchRejected(userid!);
  }

  HomeState get homeState => _homeState;

  Future<void> _fetchRejected(String userid) async {
    // print(catid);
    _homeState = HomeState.loading;
    try {
      //await Future.delayed(Duration(seconds: 5));
      final apirejected = await RejectedApi.instance.getAllRejected(userid);
      rejectedModel = apirejected!;

      _homeState = HomeState.loaded;
    } catch (e) {
      message = '$e';
      _homeState = HomeState.error;
    }
    notifyListeners();
  }
}
