import 'package:flutter/material.dart';
import '../models/ingredients.dart';
import '../models/recipe.dart';

import '../models/recipe_api.dart';
import '../widgets/home/recipe_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Recipe>? _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1664A3),
        title: Row(
            children:[
              Icon(Icons.restaurant_menu),
              SizedBox(width: 6),
              Text('Recetas'),
            ]
        ),
      ),
        body:
        _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: _recipes!.length,
          itemBuilder: (context, index) {
            return RecipeCard(
              recipe: _recipes![index],
            );
          },
        ),
      backgroundColor: Color(0xFFF1F1F1),
    );
  }
}
