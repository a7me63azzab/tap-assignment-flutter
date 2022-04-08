library built_error_model;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tap_assignment/app/serializers/serializers.dart';

part 'built_error_model.g.dart';

abstract class BuiltError implements Built<BuiltError, BuiltErrorBuilder> {
  // fields go here
  bool get status;
  String get error;

  BuiltError._();

  factory BuiltError([Function(BuiltErrorBuilder b) updates]) = _$BuiltError;

  String toJson() {
    return json.encode(serializers.serializeWith(BuiltError.serializer, this));
  }

  static BuiltError? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltError.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltError> get serializer => _$builtErrorSerializer;
}