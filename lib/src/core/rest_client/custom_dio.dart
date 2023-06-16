import 'package:delivery_backoffice_dw10/src/core/env/env.dart';
import 'package:delivery_backoffice_dw10/src/core/rest_client/interceptors/auth_interceptor.dart';
import 'package:delivery_backoffice_dw10/src/core/storage/storage.dart';
import 'package:dio/browser.dart';
import 'package:dio/dio.dart';

class CustomDio extends DioForBrowser {
  late AuthInterceptor _authInterceptor;

  CustomDio(Storage storage)
      : super(
          BaseOptions(
            baseUrl: Env.instance.get('backend_base_url'),
            connectTimeout: Duration(seconds: 5),
            receiveTimeout: Duration(seconds: 60),
          ),
        ) {
    interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
    _authInterceptor = AuthInterceptor(storage);
  }
  CustomDio auth() {
    interceptors.add(_authInterceptor);
    return this;
  }

  CustomDio unAuth() {
    interceptors.remove(_authInterceptor);
    return this;
  }
}
