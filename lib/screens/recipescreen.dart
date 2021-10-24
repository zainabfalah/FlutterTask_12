import 'package:flutter/material.dart';

import 'package:flutter_task/models/recipe.dart';

import 'package:flutter_task/widgets/recipe_details.dart';

// ignore: camel_case_types
class recipeDetailScreen extends StatelessWidget {
  const recipeDetailScreen({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        title: Text(
          recipe.title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: recipe.ingridents.length,
        itemBuilder: (context, index) {
          return recipeDetails(ingredient: recipe.ingridents[index]);
        },
      ),
    );
  }
}
