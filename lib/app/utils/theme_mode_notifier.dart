// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:ui';

class ThemeModeNotifier {
  ThemeModeNotifier(this.appBrightness);

  final appBrightness;

  changeBrightness({required Brightness brightness}) {
    appBrightness.value = brightness;
  }
}
