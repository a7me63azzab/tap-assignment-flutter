import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:lottie/lottie.dart';
import 'package:redux/redux.dart';
import 'package:tap_assignment/app/pages/add_product_page.dart';
import 'package:tap_assignment/app/store/actions/load_products_action.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/utils/ui.dart';
import 'package:tap_assignment/app/view_models/manage_products_view_model.dart';
import 'package:tap_assignment/app/widgets/appbar.dart';
import 'package:tap_assignment/app/widgets/custom_button.dart';
import 'package:tap_assignment/app/widgets/custom_textfield.dart';
import 'package:tap_assignment/app/widgets/manage_products_shimmer.dart';
import 'package:tap_assignment/app/widgets/product_item.dart';
import 'package:tap_assignment/gen/assets.gen.dart';

class ManageProducts extends StatefulWidget {
  const ManageProducts({Key? key}) : super(key: key);

  @override
  State<ManageProducts> createState() => _ManageProductsState();
}

class _ManageProductsState extends State<ManageProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBarWidget(title: "Manage Products", hasBack: false),
      ),
      body: StoreConnector<AppState, ManageProductsViewModel>(
          onInit: (store) {
            store.dispatch(loadAllProductsThunkAction());
          },
          builder: (BuildContext context,
              ManageProductsViewModel manageProductsViewModel) {
            print(
                "THERE IS NO PRODUCTS YA PRINCE ${manageProductsViewModel.products?.length}");
            if (manageProductsViewModel.isLoading ?? false) {
              return const MnagaeProductsShimmer();
            } else {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        CustomTextField(
                          hintText: 'Search Product',
                          validate: (String val) {},
                          onSave: (String val) {},
                          inputType: InputType.search,
                          onChanged: (String val) {
                            manageProductsViewModel.search(term: val);
                          },
                        ),
                        () {
                          if (manageProductsViewModel.products == null ||
                              manageProductsViewModel.products!.isEmpty) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: Ui.emptyWidget(),
                            );
                          } else if (manageProductsViewModel.hasError!) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: Ui.errorWidget(),
                            );
                          } else {
                            return Expanded(
                              child: ListView.builder(
                                padding: const EdgeInsets.only(bottom: 100),
                                itemBuilder: (context, index) {
                                  return ProductWidget(
                                    productModel: manageProductsViewModel
                                        .products?[index],
                                  );
                                },
                                itemCount:
                                    manageProductsViewModel.products?.length,
                              ),
                            );
                          }
                        }(),
                      ],
                    ),
                    Positioned(
                      bottom: 10,
                      left: 5,
                      right: 5,
                      child: CustomAppButton(
                        disable: false,
                        isLoading: false,
                        onClick: () async {
                          Navigator.of(context)
                              .push(PageRouteBuilder(pageBuilder: (_, __, ___) {
                            return AddProductPage();
                          }));
                        },
                        text: 'Add Product',
                      ),
                    )
                  ],
                ),
              );
            }
          },
          converter: (Store<AppState?> store) =>
              ManageProductsViewModel.fromStore(store)),
    );
  }
}
