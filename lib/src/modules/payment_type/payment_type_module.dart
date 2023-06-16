import 'package:delivery_backoffice_dw10/src/modules/payment_type/payment_type_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PaymentTypeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => PaymentTypePage(),
        ),
      ];
}
