import 'package:flutter/material.dart';
import '../models/recipie.dart';

import '../models/recipie_api.dart';
import '../widgets/recipe_card.dart';

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
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Recetas'),
            ]
        )
      ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: _recipes!.length,
          itemBuilder: (context, index) {
            return RecipeCard(
                title: _recipes![index].name!,
                cookTime: _recipes![index].totalTime!,
                rating: _recipes![index].rating.toString(),
              thumbnailUrl: _recipes![index].images!,);
          },
        )
    );
  }
}
