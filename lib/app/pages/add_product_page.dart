import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' as hooky;
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tap_assignment/app/store/actions/add_product_actions.dart';
import 'package:tap_assignment/app/store/app_state/app_state.dart';
import 'package:tap_assignment/app/view_models/add_product_view_model.dart';
import 'package:tap_assignment/app/widgets/appbar.dart';
import 'package:tap_assignment/app/widgets/custom_button.dart';
import 'package:tap_assignment/app/widgets/custom_textfield.dart';

class AddProductPage extends hooky.HookWidget {
  AddProductPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> productName = hooky.useState('');
    final ValueNotifier<String> productDescription = hooky.useState('');
    final ValueNotifier<num> productPrice = hooky.useState(0.0);

    ValueNotifier<List<bool>> isAllValid =
        hooky.useState([false, false, false]);

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBarWidget(title: "Add Product", hasBack: true),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: StoreConnector<AppState, AddProductViewModel>(
            onInit: (store) {
              store.dispatch(isAvailableToAddProductThunkAction(disable: true));
            },
            builder: (BuildContext context,
                AddProductViewModel addProductViewModel) {
              return Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: 'Product Name',
                      validate: addProductViewModel.validateName,
                      onSave: (String val) {
                        productName.value = val;
                      },
                      inputType: InputType.text,
                      onChanged: (String val) {
                        dynamic validName =
                            addProductViewModel.validateName(val);
                        print("from on change name =-=> $validName");

                        if (validName == null) {
                          isAllValid.value[0] = true;

                          if (!isAllValid.value.contains(false)) {
                            addProductViewModel.isAvailableToAddProduct(
                                disable: false);
                          } else {
                            addProductViewModel.isAvailableToAddProduct(
                                disable: true);
                          }
                        } else {
                          isAllValid.value[0] = false;
                          addProductViewModel.isAvailableToAddProduct(
                              disable: true);
                        }

                        print(
                            "xcxcxcxc [0] --> ${isAllValid.value.toString()}");
                      },
                    ),
                    CustomTextField(
                      hintText: 'Product Description',
                      validate: addProductViewModel.validateDescription,
                      onSave: (String val) {
                        productDescription.value = val;
                      },
                      inputType: InputType.text,
                      onChanged: (String val) {
                        dynamic validDescription =
                            addProductViewModel.validateDescription(val);

                        if (validDescription == null) {
                          isAllValid.value[1] = true;

                          if (!isAllValid.value.contains(false)) {
                            addProductViewModel.isAvailableToAddProduct(
                                disable: false);
                          } else {
                            addProductViewModel.isAvailableToAddProduct(
                                disable: true);
                          }
                        } else {
                          isAllValid.value[1] = false;
                          addProductViewModel.isAvailableToAddProduct(
                              disable: true);
                        }

                        print("xcxcxcxc [1]--> ${isAllValid.value.toString()}");
                      },
                    ),
                    CustomTextField(
                      hintText: 'Product Price',
                      validate: addProductViewModel.validatePrice,
                      onSave: (String val) {
                        productPrice.value = num.parse(val);
                      },
                      inputType: InputType.price,
                      onChanged: (String val) {
                        dynamic validPrice =
                            addProductViewModel.validatePrice(val);

                        if (validPrice == null) {
                          isAllValid.value[2] = true;

                          if (!isAllValid.value.contains(false)) {
                            addProductViewModel.isAvailableToAddProduct(
                                disable: false);
                          } else {
                            addProductViewModel.isAvailableToAddProduct(
                                disable: true);
                          }
                        } else {
                          isAllValid.value[2] = false;
                          addProductViewModel.isAvailableToAddProduct(
                              disable: true);
                        }
                        print(
                            "xcxcxcxc [2] --> ${isAllValid.value.toString()}");
                      },
                    ),
                    CustomAppButton(
                      disable: addProductViewModel.isValid,
                      isLoading: false,
                      onClick: () {},
                      text: 'Submit',
                    ),
                  ],
                ),
              );
            },
            converter: (Store<AppState?> store) =>
                AddProductViewModel.fromStore(store),
          ),
        ),
      ),
    );
  }
}

// ValueNotifier<T> useCheckFormValidation<T>({required T initialData}) {
//   final result = hooky.useState<T>(initialData);

//   hooky.useValueChanged<T, void>(result.value, (_, __) {
//     print("-=-=-=>>> ${result.value}");
//   });

//   return result;
// }
