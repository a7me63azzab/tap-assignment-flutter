import 'package:redux/redux.dart';
import 'package:tap_assignment/app/store/actions/add_product_actions.dart';
import 'package:tap_assignment/app/store/states/add_product_state/add_product_state.dart';

final Reducer<bool?> isAvailableToAddProductReducer = combineReducers<bool?>([
  TypedReducer<bool?, IsAvailableToAddProduct>(_checkIfItsAvailableReducer),
]);

final Reducer<AddProductState> addProductReducer =
    combineReducers<AddProductState>([
  TypedReducer<AddProductState, AddProductActionStart>(_addProductStart),
  TypedReducer<AddProductState, AddProductActionSuccess>(_addProductSuccess),
  TypedReducer<AddProductState, AddProductActionFailed>(_addProductFailed),
]);

bool? _checkIfItsAvailableReducer(
    bool? isAvailable, IsAvailableToAddProduct action) {
  return action.isAvailale;
}

AddProductState _addProductStart(
    AddProductState addProductState, AddProductActionStart action) {
  return addProductState.rebuild((p) => p
    ..isLoading = true
    ..hasError = false
    ..error = null
    ..productId = null);
}

AddProductState _addProductSuccess(
    AddProductState addProductState, AddProductActionSuccess action) {
  return addProductState.rebuild((p) => p
    ..isLoading = false
    ..hasError = false
    ..error = null
    ..productId = action.productId);
}

AddProductState _addProductFailed(
    AddProductState addProductState, AddProductActionFailed action) {
  return addProductState.rebuild((p) => p
    ..isLoading = false
    ..hasError = true
    ..error = "Failed"
    ..productId = null);
}



// AllProductsState _startLoading(HomeState state, GetHomeDataStart action) {
//   return state.rebuild((p) => p
//     ..isLoading = true
//     ..hasError = false
//     ..error = null
//     ..allPosts = ListBuilder<BuiltPost>());
// }
