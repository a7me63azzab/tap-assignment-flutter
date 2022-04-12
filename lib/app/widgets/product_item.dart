import 'package:flutter/material.dart';
import 'package:tap_assignment/app/models/built_product_model/built_product_model.dart';
import 'package:tap_assignment/gen/fonts.gen.dart';

class ProductWidget extends StatelessWidget {
  final BuiltProductModel? productModel;
  const ProductWidget({Key? key, this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            blurRadius: 4,
            offset: const Offset(0, 0.1),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productModel?.name ?? "",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontFamily: FontFamily.montserratSemiBold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            "Flutter team leader @TapPayments",
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontFamily: FontFamily.montserratRegular,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            "400 K.D",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontFamily: FontFamily.montserratRegular,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
