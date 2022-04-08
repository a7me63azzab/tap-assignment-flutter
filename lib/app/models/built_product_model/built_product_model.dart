library built_product_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tap_assignment/app/serializers/serializers.dart';

part 'built_product_model.g.dart';

abstract class BuiltProductModel
    implements Built<BuiltProductModel, BuiltProductModelBuilder> {
  // fields go here
  int get id;
  String get name;
  String get description;
  num get pice;

  BuiltProductModel._();

  factory BuiltProductModel([Function(BuiltProductModelBuilder b) updates]) =
      _$BuiltProductModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BuiltProductModel.serializer, this));
  }

  static BuiltProductModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltProductModel.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltProductModel> get serializer =>
      _$builtProductModelSerializer;
}
