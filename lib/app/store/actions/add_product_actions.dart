import 'package:flutter/foundation.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:tap_assignment/app/models/built_product_model/built_product_model.dart';
import 'package:tap_assignment/app/repository/product_repository.dart';
import 'package:tap_assignment/app/store/actions/error_actions.dart';
import 'package:tap_assignment/app/store/actions/success_actions.dart';

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

ThunkAction addProductThunkAction(
    {required String name, required String description, required int price}) {
  ProductRepository productRepository = ProductRepository();
  return (Store store) async {
    Future(
      () async {
        try {
          store.dispatch(AddProductActionStart());

          int? productId = await productRepository.addProduct(
            BuiltProductModel((input) => input
              ..name = name
              ..description = description
              ..pice = price),
          );
          if (productId != null) {
            if (kDebugMode) {
              print("success from action =-=> $productId");
            }
            Future.delayed(const Duration(seconds: 2), () {
              store.dispatch(AddProductActionSuccess(productId: productId));
              store.dispatch(
                  SuccessOccurredAction("Product Added Successfully"));

              store.dispatch(NavigateToAction.replace("/allProducts"));
            });
          } else {
            if (kDebugMode) {
              print("error from action =-=> Product not added");
            }
            store.dispatch(AddProductActionFailed(error: 'Add Product Failed'));
            // print("error from action =-=> ${response.body?.message}");

            store.dispatch(
              ErrorOccurredAction(
                  // Exception("${errorResponse.message}"),
                  'Add Product Failed'),
            );
          }
        } catch (err) {
          if (kDebugMode) {
            print("from try / catch show $err");
          }
          // print("error from action =-=> ${response.error.toString()}");
          store.dispatch(AddProductActionFailed(error: 'Add Product Failed'));
          // print("error from action =-=> ${response.body?.message}");
          // BuiltErrorResponse? errorResponse =
          //     response.error as BuiltErrorResponse;
          store.dispatch(
            ErrorOccurredAction(
              // Exception("$err"),
              "$err",
            ),
          );
        }
      },
    );
  };
}
