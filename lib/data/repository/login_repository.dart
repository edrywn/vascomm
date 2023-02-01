import 'package:vascomm/data/models/login/login_model.dart';
import 'package:vascomm/data/service/login_service.dart';

class LoginRepository {
  final loginService = LoginService();

  Future<LoginModel> login(String email, String password) async {
    return await loginService.login(email, password);
  }
}
