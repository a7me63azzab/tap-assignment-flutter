library settings_state;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tap_assignment/app/serializers/serializers.dart';

part 'settings_state.g.dart';

abstract class SettingsState
    implements Built<SettingsState, SettingsStateBuilder> {
  // fields go here
  String get appLng; // ar or en
  String get appTheme; // light or dark
  String get googleFont;
  String get mainColor;
  String get secondColor;
  String get accentColor;
  String get mainDarkColor;
  String get secondDarkColor;
  String get accentDarkColor;

  SettingsState._();

  factory SettingsState.initial() {
    return SettingsState((p) => p
      ..appLng = 'en'
      ..appTheme = 'light'
      ..googleFont = 'Montserrat'
      ..mainColor = '#FD7272'
      ..secondColor = '#000000'
      ..accentColor = '#979797'
      ..mainDarkColor = ''
      ..secondDarkColor = ''
      ..accentDarkColor = '');
  }

  factory SettingsState([Function(SettingsStateBuilder b) updates]) =
      _$SettingsState;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SettingsState.serializer, this));
  }

  static SettingsState? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SettingsState.serializer, json.decode(jsonString));
  }

  static Serializer<SettingsState> get serializer => _$settingsStateSerializer;
}
