// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on LoginControllerBase, Store {
  late final _$_loginSatatusAtom =
      Atom(name: 'LoginControllerBase._loginSatatus', context: context);

  LoginStateStatus get loginSatatus {
    _$_loginSatatusAtom.reportRead();
    return super._loginSatatus;
  }

  @override
  LoginStateStatus get _loginSatatus => loginSatatus;

  @override
  set _loginSatatus(LoginStateStatus value) {
    _$_loginSatatusAtom.reportWrite(value, super._loginSatatus, () {
      super._loginSatatus = value;
    });
  }

  late final _$_errorMessageAtom =
      Atom(name: 'LoginControllerBase._errorMessage', context: context);

  String? get errorMessage {
    _$_errorMessageAtom.reportRead();
    return super._errorMessage;
  }

  @override
  String? get _errorMessage => errorMessage;

  @override
  set _errorMessage(String? value) {
    _$_errorMessageAtom.reportWrite(value, super._errorMessage, () {
      super._errorMessage = value;
    });
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
