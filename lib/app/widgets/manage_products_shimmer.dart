import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MnagaeProductsShimmer extends StatelessWidget {
  const MnagaeProductsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 100),
        itemBuilder: (context, index) {
          return const ProductWidgetShimmer();
        },
        itemCount: 5,
      ),
    );
  }
}

class ProductWidgetShimmer extends StatelessWidget {
  const ProductWidgetShimmer({Key? key}) : super(key: key);

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
          Shimmer.fromColors(
            baseColor: Theme.of(context).colorScheme.background,
            highlightColor: Theme.of(context).colorScheme.surface,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 15,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Shimmer.fromColors(
            baseColor: Theme.of(context).colorScheme.background,
            highlightColor: Theme.of(context).colorScheme.surface,
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 15,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Shimmer.fromColors(
            baseColor: Theme.of(context).colorScheme.background,
            highlightColor: Theme.of(context).colorScheme.surface,
            child: Container(
              width: 70,
              height: 15,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}
