import 'package:redux/redux.dart';
import 'package:tap_assignment/app/models/built_product_model/built_product_model.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';

class ManageProductsViewModel {
  //states
  final bool? isLoading;
  final bool? hasError;
  List<BuiltProductModel>? products;
  final dynamic errorDetails;

  //Action
  final Function({required String page}) navigate;

  // static List<bool> isAllValid = [false, false, false];

  ManageProductsViewModel({
    this.isLoading,
    this.hasError,
    this.errorDetails,
    this.products,
    required this.navigate,
  });

  static ManageProductsViewModel fromStore(Store<AppState?> store) {
    return ManageProductsViewModel(
      isLoading: store.state?.allProductsState.isLoading,
      hasError: store.state?.allProductsState.hasError,
      errorDetails: store.state?.allProductsState.error,
      products: store.state?.allProductsState.allProducts.asList(),
      navigate: ({required String page}) {
        // store.dispatch(NavigateToAction.push(page));
      },
    );
  }
}
