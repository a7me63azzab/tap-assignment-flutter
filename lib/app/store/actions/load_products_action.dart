import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:tap_assignment/app/models/built_product_model/built_product_model.dart';
import 'package:tap_assignment/app/repository/product_repository.dart';
import 'package:tap_assignment/app/store/actions/error_actions.dart';
import 'package:tap_assignment/app/store/actions/success_actions.dart';
import 'package:tap_assignment/app/store/states/all_products_state/all_products_state.dart';
import 'package:built_collection/built_collection.dart';

class LoadProductsActionStart {}

class LoadProductsActionSuccess {
  BuiltList<BuiltProductModel> products;
  LoadProductsActionSuccess({required this.products});
}

class LoadProductsActionFailed {
  String? error;
  LoadProductsActionFailed({required this.error});
}

ThunkAction loadAllProductsThunkAction() {
  ProductRepository productRepository = ProductRepository();
  return (Store store) async {
    Future(
      () async {
        try {
          store.dispatch(LoadProductsActionStart());

          List<Map<String, dynamic>>? allProducts =
              await productRepository.getAllProducts();
          if (allProducts != null) {
            if (kDebugMode) {
              print("success from action =-=> ${allProducts.length}");
            }

            List<BuiltProductModel> productsResult = allProducts.reversed
                .map((e) => BuiltProductModel((input) => input
                  ..id = e['id']
                  ..name = e['name']
                  ..description = e['description']
                  ..pice = e['price']))
                .toList();

            print(
                "all products from database =-=-=> ${productsResult.toString()}");

            Future.delayed(const Duration(seconds: 2), () {
              store.dispatch(LoadProductsActionSuccess(
                  products:
                      BuiltList.build((p0) => p0..addAll(productsResult))));
              // store.dispatch(
              //     SuccessOccurredAction("Product Added Successfully"));
            });

            // store.dispatch(NavigateToAction.replace("/home"));
          } else {
            if (kDebugMode) {
              print("error from action =-=> Product not added");
            }
            store.dispatch(
                LoadProductsActionFailed(error: 'Add Product Failed'));
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
          store.dispatch(LoadProductsActionFailed(error: 'Add Product Failed'));
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
