import 'dart:developer';
import 'package:delivery_backoffice_dw10/src/core/exceptions/unauthorized_exception.dart';
import 'package:delivery_backoffice_dw10/src/services/auth/login_service.dart';
import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

enum LoginStateStatus {
  initial,
  loading,
  success,
  error,
}

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  final LoginService _loginService;

  @readonly
  var _loginSatatus = LoginStateStatus.initial;

  @readonly
  String? _errorMessage;

  LoginControllerBase(this._loginService);

  //@action
  Future<void> login(String email, String password) async {
    try {
      _loginSatatus = LoginStateStatus.loading;
      await _loginService.execute(email, password);
      _loginSatatus = LoginStateStatus.success;
    } on UnauthorizedException {
      _errorMessage = 'Login ou senha inválidos';
      _loginSatatus = LoginStateStatus.error;
    } catch (e, s) {
      //log('Erro ao tentar realizar login', error: e, stackTrace: s);
            log('Erro ao tentar efetuar login', error: e, stackTrace: s);
      _errorMessage = 'Tente novamente mais tarde.';
      _loginSatatus = LoginStateStatus.error;
    }
  }
}
