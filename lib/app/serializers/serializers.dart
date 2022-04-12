import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:tap_assignment/app/models/built_all_products_model/built_all_products_model.dart';
import 'package:tap_assignment/app/models/built_error_model/built_error_model.dart';
import 'package:tap_assignment/app/models/built_product_model/built_product_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/store/states/add_product_state/add_product_state.dart';
import 'package:tap_assignment/app/store/states/all_products_state/all_products_state.dart';
import 'package:tap_assignment/app/store/states/settings_state/settings_state.dart';

part 'serializers.g.dart';

@SerializersFor([
  BuiltError,
  BuiltProductModel,
  BuiltAllProductsModel,
  AllProductsState,
  AppState,
  SettingsState,
  AddProductState
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();