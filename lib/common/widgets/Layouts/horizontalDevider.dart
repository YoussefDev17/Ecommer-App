import 'package:flutter/material.dart';

class HorizontaDevider extends StatelessWidget {
  const HorizontaDevider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1, // The height of the divider (including padding)
      thickness: 1, // The actual thickness of the line
      color: Colors.grey,
      indent: 20, // Left padding
      endIndent: 20, // Right padding
    );
  }
}
