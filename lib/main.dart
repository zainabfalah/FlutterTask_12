import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/models/ingredient.dart';
import 'package:flutter_task/screens/homescreen.dart';
import 'models/recipe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final kubba = Recipe(
      title: 'Kubba',
      subtitle: "traditional Iraqi Dish",
      imageUrl: "assets/images/1.jpg",
      ingridents: [
        Ingredient(name: 'bulgur', quantity: 1.5, mesuringUnit: 'kg'),
        Ingredient(name: 'meat', quantity: 1.0, mesuringUnit: 'kg'),
        Ingredient(name: 'onion', quantity: 0.5, mesuringUnit: 'kg'),
      ]);
  runApp(MyApp(recipe: kubba));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(recipe: recipe),
    );
  }
}
