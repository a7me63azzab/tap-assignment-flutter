library built_all_products_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tap_assignment/app/models/built_product_model/built_product_model.dart';
import 'package:tap_assignment/app/serializers/serializers.dart';

part 'built_all_products_model.g.dart';

abstract class BuiltAllProductsModel
    implements Built<BuiltAllProductsModel, BuiltAllProductsModelBuilder> {
  // fields go here
  BuiltList<BuiltProductModel> get allProducts;

  BuiltAllProductsModel._();

  factory BuiltAllProductsModel([Function(BuiltAllProductsModelBuilder b) updates]) =
      _$BuiltAllProductsModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(BuiltAllProductsModel.serializer, this));
  }

  static BuiltAllProductsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltAllProductsModel.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltAllProductsModel> get serializer =>
      _$builtAllProductsModelSerializer;
}
