import 'package:delivery_backoffice_dw10/src/modules/core/core_module.dart';
import 'package:delivery_backoffice_dw10/src/modules/login/login_module.dart';
import 'package:delivery_backoffice_dw10/src/modules/payment_type/payment_type_module.dart';
import 'package:delivery_backoffice_dw10/src/modules/template/base_layout.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/login', module: LoginModule()),
        ChildRoute(
          '/',
          child: (context, args) => const BaseLayout(
            body: RouterOutlet(),
          ),
          children: [
            ModuleRoute(
              '/payment-type',
              module: PaymentTypeModule(),
            ),
          ],
        ),
      ];
}
