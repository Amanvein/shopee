import 'package:flutter/material.dart';
import 'package:shope/models/categories.dart';

import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final dynamic categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}
