import 'dart:convert';

import 'package:vascomm/data/models/login/login_model.dart';
import 'package:http/http.dart' as http;

class LoginService {
  Future<LoginModel> login(String email, String password) async {
    Uri uri = Uri.parse("https://reqres.in/api/login");

    var response = await http.post(uri, body: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      final result = json.decode(response.body);

      return LoginModel(success: true, token: result['token']);
    } else {
      final result = json.decode(response.body);

      return LoginModel(success: false, token: result['error']);
    }
  }
}
