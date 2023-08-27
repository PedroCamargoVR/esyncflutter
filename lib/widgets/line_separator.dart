import 'package:flutter/material.dart';

class LineSeparator extends StatelessWidget {
  const LineSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        height: 1,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white54),
        ),
      ),
    );
  }
}
