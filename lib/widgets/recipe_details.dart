// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart'
    show
        BorderRadius,
        BorderSide,
        BuildContext,
        Card,
        Colors,
        EdgeInsets,
        Key,
        Padding,
        Radius,
        RoundedRectangleBorder,
        SizedBox,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;
import 'package:flutter_task/models/ingredient.dart';

// ignore: camel_case_types
class recipeDetails extends StatelessWidget {
  const recipeDetails({
    Key? key,
    required this.ingredient,
  }) : super(key: key);

  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        // ignore: unnecessary_const
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            side: BorderSide(
              color: Colors.green,
              width: 2.5,
            )),
        child: SizedBox(
          height: 45.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${ingredient.quantity} ${ingredient.mesuringUnit} ${ingredient.name}',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
