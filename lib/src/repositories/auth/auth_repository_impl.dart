import 'dart:developer';

import 'package:delivery_backoffice_dw10/src/core/exceptions/repository_exception.dart';
import 'package:delivery_backoffice_dw10/src/core/exceptions/unauthorized_exception.dart';
import 'package:delivery_backoffice_dw10/src/core/rest_client/custom_dio.dart';
import 'package:delivery_backoffice_dw10/src/models/auth_model.dart';
import 'package:dio/dio.dart';

import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio _dio;

  AuthRepositoryImpl(this._dio);

  @override
  Future<AuthModel> login(String email, String password) async {
    try {
      final result = await _dio.unAuth().post(
        '/auth',
        data: {
          'email': email,
          'password': password,
          'admin': true,
        },
      );
      return AuthModel.fromMap(result.data);
    } on DioError catch (e, s) {
      if (e.response?.statusCode == 403) {
        log('Email ou senha, inválidos.', error: s, stackTrace: s);
        throw UnauthorizedException();
      }
      log('Erro ao tentar efetuar login.', error: e, stackTrace: s);
      throw RepositoryException(message:'Erro ao tentar efetuar logim.');
    }
  }
}
