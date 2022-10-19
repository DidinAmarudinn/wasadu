import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueA701 = fromHex('#1453f6');

  static Color black9003d = fromHex('#3d000000');

  static Color black9000a = fromHex('#0a000000');

  static Color blue700 = fromHex('#1976d2');

  static Color blueA700 = fromHex('#1554f6');

  static Color blue70033 = fromHex('#331976d2');

  static Color black9006b = fromHex('#6b000000');

  static Color gray900 = fromHex('#121212');

  static Color green500 = fromHex('#4caf50');

  static Color black9001e = fromHex('#1e000000');

  static Color black90089 = fromHex('#89000000');

  static Color black900Dd = fromHex('#dd000000');

  static Color black90099 = fromHex('#99000000');

  static Color black90033 = fromHex('#33000000');

  static Color black900 = fromHex('#000000');

  static Color black90060 = fromHex('#60000000');

  static Color bluegray400 = fromHex('#888888');

  static Color deepOrangeA700 = fromHex('#e51515');

  static Color whiteA700 = fromHex('#ffffff');

  static Color cyan700 = fromHex('#01a299');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
