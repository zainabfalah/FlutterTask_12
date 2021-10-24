import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_task/models/recipe.dart';
import 'package:flutter_task/widgets/recipe_card.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Fooder",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white),
      body: recipeCard(recipe: recipe),
    );
  }
}
