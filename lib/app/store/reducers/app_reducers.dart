import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/store/reducers/add_product_reducer.dart';
import 'package:tap_assignment/app/store/reducers/error_reducer.dart';
import 'package:tap_assignment/app/store/reducers/get_all_products_reducer.dart';
import 'package:tap_assignment/app/store/reducers/success_reducer.dart';
import 'package:tap_assignment/app/store/states/add_product_state/add_product_state.dart';
import 'package:tap_assignment/app/store/states/settings_state/settings_state.dart';

AppState appReducer(AppState state, action) {
  return AppState((p) => p
    ..isAvailableToAddProduct =
        isAvailableToAddProductReducer(state.isAvailableToAddProduct, action)
    ..addProductState = addProductReducer(state.addProductState, action).toBuilder()
    ..allProductsState = getAllProductsReducer(state.allProductsState, action).toBuilder()
    ..settingsState = SettingsState.initial().toBuilder()
    ..success = successReducer(state.success, action)
    ..error = errorReducer(state.error, action));
}
