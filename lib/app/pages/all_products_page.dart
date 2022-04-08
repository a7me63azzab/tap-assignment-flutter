import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' as hooky;
import 'package:tap_assignment/app/utils/ui.dart';
import 'package:tap_assignment/app/widgets/appbar.dart';
import 'package:tap_assignment/app/widgets/custom_button.dart';

class ManageProducts extends StatefulWidget {
  const ManageProducts({Key? key}) : super(key: key);

  @override
  State<ManageProducts> createState() => _ManageProductsState();
}

class _ManageProductsState extends State<ManageProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Ui.parseColor("#F9F9F9"),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBarWidget(title: "Manage Products", isCenter: true),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Align(
            //     alignment: Alignment.center,
            //     child: ElevatedButton(
            //       onPressed: () {},
            //       child: Container(),
            //     )),

            Positioned(
              bottom: 10,
              left: 5,
              right: 5,
              child: CustomAppButton(
                disable: true,
                isLoading: true,
                onClick: () {},
                text: 'Add Product',
              ),
            )
          ],
        ),
      ),
    );
  }
}
