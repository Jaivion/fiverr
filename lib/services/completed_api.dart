import 'dart:convert';
import 'package:fiverr/models/completed_model.dart';


import 'package:http/http.dart' as http;



class CompletedApi {
  static late CompletedApi _instance;

  CompletedApi._();
  static CompletedApi get instance {
    _instance = CompletedApi._();
    return _instance;
  }


  Future<List<CompletedModel>?> getAllCompleted(String user_id) async {
    print('helloooooooooo completed api');

    var response = await  http.post(
      Uri.parse('https://easemysalon.info/flutter_api/user/completed_list'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "user_id": "$user_id",
      }),
    );


    final data = json.decode(response.body);

    final  List responseBody = data['bookinginfo'];
    print(responseBody);
    return responseBody.map((e) => CompletedModel.fromJson(e)).toList();

    //   }

  }
}
