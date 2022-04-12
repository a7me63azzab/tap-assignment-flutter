import 'package:redux/redux.dart';
import 'package:tap_assignment/app/store/actions/add_product_actions.dart';
import 'package:tap_assignment/app/store/actions/load_products_action.dart';
import 'package:tap_assignment/app/store/states/all_products_state/all_products_state.dart';

final Reducer<AllProductsState> getAllProductsReducer =
    combineReducers<AllProductsState>([
  TypedReducer<AllProductsState, LoadProductsActionStart>(_loadProductsStart),
  TypedReducer<AllProductsState, LoadProductsActionSuccess>(
      _loadProductsSuccess),
  TypedReducer<AllProductsState, LoadProductsActionFailed>(_loadProductsFailed),
]);

AllProductsState _loadProductsStart(
    AllProductsState allProductsState, LoadProductsActionStart action) {
  return allProductsState.rebuild((p) => p
    ..isLoading = true
    ..hasError = false
    ..error = null
    ..allProducts = null);
}

AllProductsState _loadProductsSuccess(
    AllProductsState allProductsState, LoadProductsActionSuccess action) {
  return allProductsState.rebuild((p) => p
    ..isLoading = false
    ..hasError = false
    ..error = null
    ..allProducts = action.products.toBuilder());
}

AllProductsState _loadProductsFailed(
    AllProductsState allProductsState, LoadProductsActionFailed action) {
  return allProductsState.rebuild((p) => p
    ..isLoading = false
    ..hasError = true
    ..error = "Failed"
    ..allProducts = null);
}



// AllProductsState _startLoading(HomeState state, GetHomeDataStart action) {
//   return state.rebuild((p) => p
//     ..isLoading = true
//     ..hasError = false
//     ..error = null
//     ..allPosts = ListBuilder<BuiltPost>());
// }
