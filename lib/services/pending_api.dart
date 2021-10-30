import 'dart:convert';
import 'package:fiverr/models/pending_model.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class PendingApi {
  static late PendingApi _instance;

  PendingApi._();
  static PendingApi get instance {
    _instance = PendingApi._();
    return _instance;
  }

  Future<List<PendingModel>?> getAllPending(String user_id) async {
    print('helloooooooooo pending api');
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // String?  user_id = prefs.getString('id');
    //
    //   print(user_id);
    //var response = await  http.get(Uri.parse('https://easemysalon.info/flutter_api/user/all_upcoming_list'));

    var response = await http.post(
      Uri.parse('https://easemysalon.info/flutter_api/user/all_upcoming_list'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'user_id': user_id,
      }),
    );

    //  if (response.statusCode == 200) {

    final data = json.decode(response.body);

    final List responseBody = data['bookinginfo'];
    print(responseBody);
    return responseBody.map((e) => PendingModel.fromJson(e)).toList();

    //   }
  }
}
