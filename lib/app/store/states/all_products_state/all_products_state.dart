library all_products_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tap_assignment/app/models/built_product_model/built_product_model.dart';
import 'package:tap_assignment/app/serializers/serializers.dart';

part 'all_products_state.g.dart';

abstract class AllProductsState
    implements Built<AllProductsState, AllProductsStateBuilder> {
  // fields go here
  bool get isLoading;
  bool get hasError;
  String? get error;
  BuiltList<BuiltProductModel> get allProducts;

  AllProductsState._();

    factory AllProductsState.initial() {
    return AllProductsState((p) => p
      ..isLoading = false
      ..hasError = false
      ..error = null
      ..allProducts = ListBuilder<BuiltProductModel>());
  }

  factory AllProductsState([Function(AllProductsStateBuilder b) updates]) =
      _$AllProductsState;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AllProductsState.serializer, this));
  }

  static AllProductsState? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AllProductsState.serializer, json.decode(jsonString));
  }

  static Serializer<AllProductsState> get serializer =>
      _$allProductsStateSerializer;
}
