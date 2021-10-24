import 'ingredient.dart';

// ignore: camel_case_types
class Recipe {
  final String title;
  final String subtitle;
  final String imageUrl;
  final List<Ingredient> ingridents;

  Recipe(
      {required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.ingridents});
}
