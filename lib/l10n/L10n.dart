import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class L10N{
  static final avaliable = [
    const Locale('en'),
    const Locale('es'),
    const Locale('ca')
  ];

  static Locale get defaultDeviceLocale{
    String deviceLocale = ui.window.locale.languageCode;
    String? deviceLang = ui.window.locale.countryCode;
    return Locale(deviceLocale,deviceLang);
  }
}