library app_state;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tap_assignment/app/serializers/serializers.dart';
import 'package:tap_assignment/app/store/states/settings_state/settings_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  // fields go here
  // AllProductsState get allProductsState;
  SettingsState get settingsState;
  String? get error;
  String? get success;

  AppState._();

  factory AppState.initial() {
    return AppState((p) => p
      ..settingsState = SettingsState.initial().toBuilder()
      ..success = null
      ..error = null);
  }

  factory AppState([Function(AppStateBuilder b) updates]) = _$AppState;

  String toJson() {
    return json.encode(serializers.serializeWith(AppState.serializer, this));
  }

  // static AppState? fromJson(String jsonString) {
  //   return serializers.deserializeWith(
  //       AppState.serializer, json.decode(jsonString));
  // }

  static AppState? fromJson(String? jsonString) {
    if (jsonString == null) {
      return null;
    }
    return serializers.deserializeWith(
        AppState.serializer, json.decode(jsonString));
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
