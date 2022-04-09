import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tap_assignment/gen/assets.gen.dart';
import 'package:tap_assignment/gen/fonts.gen.dart';

class CustomAppButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final bool disable;
  final Function() onClick;
  const CustomAppButton({
    Key? key,
    required this.text,
    required this.isLoading,
    required this.disable,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ElevatedButton(
        onPressed: disable ? null : onClick,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.zero,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onTertiary,
                  fontFamily: FontFamily.montserratSemiBold,
                  fontSize: 16,
                ),
              ),
            ),
            () {
              if (isLoading) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Lottie.asset(
                    Assets.lottie.buttonLoader,
                    fit: BoxFit.contain,
                    // width: 50,
                    // height: 50,
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            }(),
          ],
        ),
      ),
    );
  }
}












// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:tap_assignment/gen/assets.gen.dart';
// import 'package:tap_assignment/gen/fonts.gen.dart';

// class CustomAppButton extends StatelessWidget {
//   final String text;
//   final bool isLoading;
//   final bool disable;
//   final Function() onClick;
//   const CustomAppButton({
//     Key? key,
//     required this.text,
//     required this.isLoading,
//     required this.disable,
//     required this.onClick,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: disable ? null : onClick,
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 50,
//         margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(100),
//           color: disable
//               ? Theme.of(context).colorScheme.primary.withOpacity(0.4)
//               : Theme.of(context).colorScheme.primary,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               blurRadius: 20,
//               offset: const Offset(0, 5),
//             ),
//           ],
//         ),
//         child: Stack(
//           children: [
//             Align(
//               alignment: Alignment.center,
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   color: Theme.of(context).colorScheme.tertiary,
//                   fontFamily: FontFamily.montserratSemiBold,
//                   fontSize: 12,
//                 ),
//               ),
//             ),
//             () {
//               if (isLoading) {
//                 return Align(
//                   alignment: Alignment.centerLeft,
//                   child: Lottie.asset(
//                     Assets.lottie.buttonLoader,
//                     fit: BoxFit.contain,
//                   ),
//                 );
//               } else {
//                 return const SizedBox.shrink();
//               }
//             }(),
//           ],
//         ),
//       ),
//     );
//   }
// }
