library add_product_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tap_assignment/app/serializers/serializers.dart';

part 'add_product_state.g.dart';

abstract class AddProductState
    implements Built<AddProductState, AddProductStateBuilder> {
  // fields go here
  bool get isLoading;
  bool get hasError;
  String? get error;
  int? get productId;

  AddProductState._();

  factory AddProductState.initial() {
    return AddProductState((p) => p
      ..isLoading = false
      ..hasError = false
      ..error = null
      ..productId = null);
  }

  factory AddProductState([Function(AddProductStateBuilder b) updates]) =
      _$AddProductState;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AddProductState.serializer, this));
  }

  static AddProductState? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AddProductState.serializer, json.decode(jsonString));
  }

  static Serializer<AddProductState> get serializer =>
      _$addProductStateSerializer;
}
