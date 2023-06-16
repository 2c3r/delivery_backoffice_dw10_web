import 'dart:developer';

import 'package:delivery_backoffice_dw10/src/core/exceptions/repository_exception.dart';
import 'package:delivery_backoffice_dw10/src/core/rest_client/custom_dio.dart';
import 'package:delivery_backoffice_dw10/src/models/payment_type_model.dart';
import 'package:dio/dio.dart';

import './payment_type_repository.dart';

class PaymentTypeRepositoryImpl implements PaymentTypeRepository {
  final CustomDio _dio;

  PaymentTypeRepositoryImpl(this._dio);

  @override
  Future<List<PaymentTypeModel>> findAll(bool? enabled) async {
    try {
      final Response<dynamic> paymentResult = await _dio.auth().get(
        '/payment-type',
        queryParameters: {
          if (enabled != null) 'enabled': enabled,
        },
      );
      return paymentResult.data
          .map<PaymentTypeModel>((dynamic p) => PaymentTypeModel.fromMap(p))
          .toList();
    } on Error catch (e, s) {
      log('Erro ao buscar forma de pagamento.', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar forma de pagamento.');
    }
  }

  @override
  Future<PaymentTypeModel> getById(int id) async {
    try {
      final Response<dynamic> paymentResult = await _dio.auth().get(
            '/payment-type/$id',
          );
      return PaymentTypeModel.fromMap(paymentResult.data);
    } on Error catch (e, s) {
      log('Erro ao buscar forma de pagamento $id', error: e, stackTrace: s);
      throw RepositoryException(
          message: 'Erro ao buscar forma de pagamento $id');
    }
  }

  @override
  Future<void> save(PaymentTypeModel model) async {
    try {
      final client = _dio.auth();

      if (model.id != null) {
        await client.put(
          '/payment-type/${model.id}',
          data: model.toMap(),
        );
      } else {
        await client.post(
          '/payment-type/',
          data: model.toMap(),
        );
      }
    } on Error catch (e, s) {
      log('Erro ao salvar forma de pagamento', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao salvar forma de pagamento');
    }
  }
}
