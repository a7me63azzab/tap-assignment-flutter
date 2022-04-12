import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:tap_assignment/app/store/actions/add_product_actions.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';

class AddProductViewModel {
  //states
  final bool? isLoading;
  final bool isValid;
  final bool? hasError;

  final dynamic errorDetails;

  //Action
  final Function(
      {required String name,
      required String description,
      required int price}) add;
  final Function({required String page}) navigate;
  final Function(String name) validateName;
  final Function(String desc) validateDescription;
  final Function(String price) validatePrice;
  final Function({required bool disable}) isAvailableToAddProduct;

  // static List<bool> isAllValid = [false, false, false];

  AddProductViewModel({
    this.isLoading,
    required this.isValid,
    this.hasError,
    this.errorDetails,
    required this.add,
    required this.isAvailableToAddProduct,
    required this.navigate,
    required this.validateName,
    required this.validateDescription,
    required this.validatePrice,
  });

  static AddProductViewModel fromStore(Store<AppState?> store) {
    return AddProductViewModel(
      isLoading: store.state?.addProductState.isLoading,
      hasError: store.state?.addProductState.hasError,
      errorDetails: store.state?.addProductState.error,
      isValid: store.state!.isAvailableToAddProduct,
      add: (
          {required String name,
          required String description,
          required int price}) {
        store.dispatch(addProductThunkAction(
            name: name, description: description, price: price));
      },
      navigate: ({required String page}) {
        // store.dispatch(NavigateToAction.push(page));
      },
      validateName: (String name) {
        if (name.isEmpty) {
          return "Product name is required.";
        } else if (name.length < 3) {
          return "Product name must be more than 3 characters.";
        } else {
          return null;
        }
      },
      validateDescription: (String desc) {
        if (desc.isEmpty) {
          return "Product Description is required.";
        } else if (desc.length < 3) {
          return "Product Description must be more than 3 characters.";
        } else {
          return null;
        }
      },
      validatePrice: (String price) {
        if (price.isEmpty) {
          return "Product price is required.";
        } else {
          return null;
        }
      },
      isAvailableToAddProduct: ({required bool disable}) {
        store.dispatch(isAvailableToAddProductThunkAction(disable: disable));
      },
    );
  }
}
