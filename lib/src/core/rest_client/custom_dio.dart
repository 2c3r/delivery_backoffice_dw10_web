import 'package:delivery_backoffice_dw10/src/core/env/env.dart';
import 'package:dio/browser.dart';
import 'package:dio/dio.dart';

class CustomDio extends DioForBrowser {
  CustomDio()
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
  }
  CustomDio auth() {
    return this;
  }

  CustomDio unAuth() {
    return this;
  }
}
