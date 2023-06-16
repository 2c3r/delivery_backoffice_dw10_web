import 'package:delivery_backoffice_dw10/src/core/rest_client/custom_dio.dart';
import 'package:delivery_backoffice_dw10/src/core/storage/session_storage.dart';
import 'package:delivery_backoffice_dw10/src/core/storage/storage.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  List<Bind> get binds => [
        Bind.lazySingleton<Storage>((i) => SessionStorage(), export: true),
        Bind.lazySingleton((i) => CustomDio(i()), export: true),
      ];
}
