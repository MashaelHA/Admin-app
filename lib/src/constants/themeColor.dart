// ignore_for_file: constant_identifier_names, file_names

import 'package:flutter/material.dart';

const GreenPrimaryColor = Color(0xFF366A7B);
const YellowPrimaryColor = Color(0xFFFFDE59);
const YellowSecondaryColor = Color(0xFFFFFAE6);
const WhiteTittileColor = Color(0xFFFAFAFC);
const GraySecondaryColor = Color(0xFF7E7E7E);


const double defaultPadding = 16.0;


class ColorConstant {

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}