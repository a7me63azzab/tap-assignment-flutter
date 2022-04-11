import 'package:redux/redux.dart';
import 'package:tap_assignment/app/store/actions/add_product_actions.dart';

final Reducer<bool?> isAvailableToAddProductReducer = combineReducers<bool?>([
  TypedReducer<bool?, IsAvailableToAddProduct>(_checkIfItsAvailableReducer),
]);

bool? _checkIfItsAvailableReducer(
    bool? isAvailable, IsAvailableToAddProduct action) {
  print("from reducer =-=-> ${action.isAvailale}");
  return action.isAvailale;
}
