import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_task/models/recipe.dart';
import 'package:flutter_task/screens/recipescreen.dart';

// ignore: camel_case_types
class recipeCard extends StatelessWidget {
  const recipeCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return recipeDetailScreen(
              recipe: recipe,
            );
          }));
        },
        child: Container(
          height: 900,
          width: 600,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(recipe.imageUrl),
              fit: BoxFit.contain,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Text(recipe.title,
                    style: const TextStyle(
                        fontSize: 25.2,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
                top: 70.0,
                left: 5.0,
              ),
              Positioned(
                child: Text(recipe.subtitle,
                    style: const TextStyle(
                        fontSize: 35.2,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                top: 90,
                left: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
