import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

class AddProductActionStart {}

class IsAvailableToAddProduct {
  bool isAvailale;
  IsAvailableToAddProduct({required this.isAvailale});
}

class AddProductActionSuccess {
  int productId;
  AddProductActionSuccess({required this.productId});
}

class AddProductActionFailed {
  String? error;
  AddProductActionFailed({required this.error});
}

ThunkAction isAvailableToAddProductThunkAction({required bool disable}) {
  return (Store store) async {
    store.dispatch(IsAvailableToAddProduct(isAvailale: disable));
  };
}
