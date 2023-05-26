import 'package:delivery_backoffice_dw10/src/models/auth_model.dart';

abstract class AuthRepository {
  Future<AuthModel> login(String email, String password);
}
