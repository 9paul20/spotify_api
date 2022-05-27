import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:spotify_api/models/recipe.dart';

import 'ingredients.dart';

class RecipeApi {
  static Future<List<Recipe>?> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "24", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "c8f8c8abf5msh1aa07dc91448065p19dbe7jsna3ae063763cc",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List _temp = [];
      for (var i in data['feed']) {
        _temp.add(i['content']['details']);
      }
      for (var i in data['feed']) {
        _temp.add(i['content']['details']);
      }
      return Recipe.recipesFromSnapshot(_temp);
    } else {
      return null;
    }
  }

  static Future<List<Ingredients>?> getIngredients() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "24", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "c8f8c8abf5msh1aa07dc91448065p19dbe7jsna3ae063763cc",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List _temp = [];
      for (var i in data['feed']) {
        _temp.add(i['content']['ingredientLines'][i]);
      }
      return Ingredients.ingredientsFromSnapshot(_temp);
    } else {
      return null;
    }
  }
}