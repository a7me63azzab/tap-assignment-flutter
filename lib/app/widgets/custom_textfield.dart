import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_assignment/gen/fonts.gen.dart';

enum InputType { price, search, text }

class CustomTextField extends StatelessWidget {
  // final TextEditingController? textEditingController;

  final Function(String val) onSave;
  final Function(String val) validate;
  final Function(String val) onChanged;
  final String hintText;
  final InputType inputType;
  const CustomTextField({
    Key? key,
    // this.textEditingController,
    required this.onSave,
    required this.validate,
    required this.onChanged,
    required this.hintText,
    required this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow,
              blurRadius: 4,
              offset: const Offset(0, 0.1),
            ),
          ],
        ),
        child: TextFormField(
          keyboardType: () {
            if (inputType == InputType.price) {
              return TextInputType.number;
            } else {
              return TextInputType.text;
            }
          }(),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          // inputFormatters: [
          // FilteringTextInputFormatter(RegExp(r'(^\d*\.?\d*)'),
          //     allow: inputType == InputType.price ? true : false),
          // ],
          onSaved: (val) => onSave(val ?? ""),
          validator: (val) => validate(val ?? ""),
          onChanged: (val) => onChanged(val),
          decoration: InputDecoration(
              hintText: hintText,
              // hintStyle: TextStyle(),
              suffixIcon: () {
                if (inputType == InputType.search) {
                  return const Icon(CupertinoIcons.search);
                } else if (inputType == InputType.price) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                    child: Text(
                      "K.D",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontFamily: FontFamily.montserratRegular,
                        fontSize: 12,
                      ),
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              }()),
        ),
      ),
    );
  }
}
