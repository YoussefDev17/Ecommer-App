import 'package:flutter/material.dart';

class CategoryModel extends StatelessWidget {
  final String imgString;
  final String title;

  const CategoryModel({
    super.key,
    required this.imgString,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), // Adjust the radius
            image: DecorationImage(
              image: AssetImage(imgString), // ✅ AssetImage بدل String
            ),
          ),
        ),

        Text(title),
      ],
    );
  }
}
