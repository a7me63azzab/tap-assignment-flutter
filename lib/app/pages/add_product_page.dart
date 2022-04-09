import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' as hooky;
import 'package:tap_assignment/app/widgets/appbar.dart';
import 'package:tap_assignment/app/widgets/custom_button.dart';
import 'package:tap_assignment/app/widgets/custom_textfield.dart';

class AddProductPage extends hooky.HookWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBarWidget(title: "Add Product", hasBack: true),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              CustomTextField(
                hintText: 'Product Name',
                validate: (String val) {},
                onSave: (String val) {},
                inputType: InputType.text,
              ),
              CustomTextField(
                hintText: 'Product Description',
                validate: (String val) {},
                onSave: (String val) {},
                inputType: InputType.text,
              ),
              CustomTextField(
                hintText: 'Product Price',
                validate: (String val) {},
                onSave: (String val) {},
                inputType: InputType.price,
              ),
              CustomAppButton(
                disable: false,
                isLoading: false,
                onClick: () {
                  Navigator.of(context)
                      .push(PageRouteBuilder(pageBuilder: (_, __, ___) {
                    return const AddProductPage();
                  }));
                },
                text: 'Submit',
              )
            ],
          ),
        ),
      ),
    );
  }
}
