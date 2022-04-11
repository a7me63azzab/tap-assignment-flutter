import 'package:flutter/material.dart';
import 'package:tap_assignment/app/pages/add_product_page.dart';
import 'package:tap_assignment/app/widgets/appbar.dart';
import 'package:tap_assignment/app/widgets/custom_button.dart';
import 'package:tap_assignment/app/widgets/custom_textfield.dart';
import 'package:tap_assignment/app/widgets/product_item.dart';

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
      body: SizedBox(
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
                  onChanged: (String val) {},
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 100),
                    itemBuilder: (context, index) {
                      return const ProductWidget();
                    },
                    itemCount: 20,
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 10,
              left: 5,
              right: 5,
              child: CustomAppButton(
                disable: false,
                isLoading: false,
                onClick: () {
                  // ProductRepository productRepository = ProductRepository();
                  // int? result = await productRepository.addProduct();
                  // print("insert item in data base => $result");
                  Navigator.of(context)
                      .push(PageRouteBuilder(pageBuilder: (_, __, ___) {
                    return AddProductPage();
                  }));

                  // List<Map<String, dynamic>>? allProducts =
                  //     await productRepository.getAllProducts();

                  // allProducts?.forEach((element) {
                  //   print(element.toString());
                  // });
                },
                text: 'Add Product',
              ),
            )
          ],
        ),
      ),
    );
  }
}
