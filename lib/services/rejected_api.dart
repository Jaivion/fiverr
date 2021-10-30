import 'dart:convert';
import 'package:fiverr/models/rejected_model.dart';
import 'package:http/http.dart' as http;

class RejectedApi {
  static late RejectedApi _instance;

  RejectedApi._();
  static RejectedApi get instance {
    _instance = RejectedApi._();
    return _instance;
  }

  Future<List<RejectedModel>?> getAllRejected(String userId) async {
    print('helloooooooooo salon');

    var response = await http.post(
      Uri.parse('https://easemysalon.info/flutter_api/user/canceled_list'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'user_id': userId,
      }),
    );

    //  if (response.statusCode == 200) {

    print('helloooooooooo salon 2');
    final data = json.decode(response.body);
    print(data);
    final List responseBody = data['bookinginfo'];
    print(responseBody);
    return responseBody.map((e) => RejectedModel.fromJson(e)).toList();

    //   }
  }
}
