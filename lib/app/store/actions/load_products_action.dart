import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:tap_assignment/app/models/built_product_model/built_product_model.dart';
import 'package:tap_assignment/app/repository/product_repository.dart';
import 'package:tap_assignment/app/store/actions/error_actions.dart';
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
                  ..price = e['price']))
                .toList();

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

            store.dispatch(
              ErrorOccurredAction('Add Product Failed'),
            );
          }
        } catch (err) {
          store.dispatch(LoadProductsActionFailed(error: 'Add Product Failed'));

          store.dispatch(
            ErrorOccurredAction(
              "$err",
            ),
          );
        }
      },
    );
  };
}

ThunkAction searchInProductsThunkAction({required String term}) {
  ProductRepository productRepository = ProductRepository();
  return (Store store) async {
    Future(
      () async {
        try {
          List<Map<String, dynamic>>? result =
              await productRepository.search(term: term);
          print("search products -=-> ${result.toString()}");
          if (result != null && result != []) {
            if (kDebugMode) {
              print("success from action =-=> ${result.length}");
            }

            List<BuiltProductModel> productsResult = result.reversed
                .map((e) => BuiltProductModel((input) => input
                  ..id = e['id']
                  ..name = e['name']
                  ..description = e['description']
                  ..price = e['price']))
                .toList();

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

            store.dispatch(
              ErrorOccurredAction('Add Product Failed'),
            );
          }
        } catch (err) {
          store.dispatch(LoadProductsActionFailed(error: 'Add Product Failed'));

          store.dispatch(
            ErrorOccurredAction(
              "$err",
            ),
          );
        }
      },
    );
  };
}
