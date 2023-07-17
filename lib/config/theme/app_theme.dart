

import 'package:flutter/material.dart';

class AppTheme {

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: const Color(0xff2862F5) //color en hexadecimal antecedido por 0xff
  );
}