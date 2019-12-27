import 'package:flavr_recipes/utils/constants.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 56,
        width: 344,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(
          child: Text(
            'DESSERT',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
  }
}
