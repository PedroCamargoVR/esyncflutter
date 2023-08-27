import 'package:esync_controledeestoque/themes/input_borders.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class InputText extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  String? Function(String?)? validator;
  List<TextInputFormatter>? inputFormatters;
  int? maxLength;
  TextInputType? inputType;
  bool? passwordText;
  InputText(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labelText,
      this.validator,
      this.inputFormatters,
      this.maxLength,
      this.inputType,
      this.passwordText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.34,
      child: TextFormField(
        controller: controller,
        validator: (validator != null)
            ? validator
            : (value) {
                if (value == null || value.isEmpty) {
                  return "Este campo é obrigatório";
                }
                return null;
              },
        inputFormatters: (inputFormatters == null)
            ? <TextInputFormatter>[]
            : inputFormatters,
        style: const TextStyle(fontSize: 18),
        buildCounter: (context,
                {int? currentLength, int? maxLength, bool? isFocused}) =>
            null,
        maxLength: maxLength,
        keyboardType: (inputType == null) ? TextInputType.text : inputType,
        obscureText: (passwordText == null) ? false : passwordText!,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 18),
          border: InputBordersMap.inputBorders["default"],
        ),
      ),
    );
  }
}
