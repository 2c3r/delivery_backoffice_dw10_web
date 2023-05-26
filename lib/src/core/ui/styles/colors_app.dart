import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => Color(0xff007d21);
  Color get secondary => Color(0xffffab18);
  Color get black => Color(0xff140e0e);
}

extension ColorsAppExceptions on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
