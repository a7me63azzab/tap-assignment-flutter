import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final bool hasBack;
  const AppBarWidget({Key? key, required this.title, required this.hasBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
      ),
      leading: hasBack
          ? InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(CupertinoIcons.chevron_back))
          : const SizedBox.shrink(),
    );
  }
}
