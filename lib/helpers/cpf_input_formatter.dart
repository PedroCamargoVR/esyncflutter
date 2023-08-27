import 'package:flutter/services.dart';

class CpfInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text;
    int selectionIndex = newValue.selection.end;
    int usedSubstringIndex = 0;
    final StringBuffer newText = StringBuffer();

    if (text.isEmpty) {
      return newValue;
    }

    for (int i = 0; i < text.length; i++) {
      if (i == 3 || i == 6) {
        newText.write('.');
      } else if (i == 9) {
        newText.write('-');
      }
      if (usedSubstringIndex == text.length) {
        break;
      }
      newText.write(text.substring(usedSubstringIndex, usedSubstringIndex + 1));
      usedSubstringIndex++;
    }

    // If the user tries to delete separator, we need to adjust the selection index
    if (newValue.text.length < oldValue.text.length) {
      selectionIndex--;
      if (selectionIndex < 0) {
        selectionIndex = 0;
      }
    }

    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
