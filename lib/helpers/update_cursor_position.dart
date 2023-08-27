import 'package:flutter/material.dart';

void updateCursorPosition(TextEditingController controller) {
  if (controller.selection.baseOffset != controller.text.length) {
    // Move cursor to the end of the text when editing
    controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length));
  }
}
