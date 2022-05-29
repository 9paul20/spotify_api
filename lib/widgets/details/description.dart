import 'package:flutter/material.dart';
import 'package:spotify_api/models/recipe.dart';
import '../../const/variable_const.dart';
import '../../models/ingredients.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    @required this.recipe,
  }) : super(key: key);

  final Recipe? recipe;


  @override
  Widget build(BuildContext context) {
    bool _isLoading = true;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: appPadding),
      child: Container(
        child: Column(
        children: [
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla, orci id pharetra malesuada, lacus justo posuere justo, sed aliquet est tellus quis mauris. Integer efficitur sed massa sed eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas gravida pharetra purus, nec sodales mi congue id. Nullam ullamcorper ligula eget imperdiet mattis. Vivamus ultricies felis eget metus lacinia, vehicula lobortis lacus ultricies. Integer sollicitudin elementum congue. Nunc nec tempor lacus. Sed non mauris interdum, auctor ligula nec, viverra eros. In hac habitasse platea dictumst. Curabitur urna lacus, sagittis ac eleifend sit amet, laoreet sit amet lorem. Suspendisse eu eros neque.",
              style: TextStyle(height: 1.5, color: Colors.black),
          ),
          /*
          Text(
          "I'm the recipe: ${recipe!.name} \n${recipe!.totalTimeInSeconds!}",
              style: TextStyle(height: 1.5),
            ),

           */
          /*Container(
            child: _isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
              itemCount: _ingredients!.length,
              itemBuilder: (context, index) {
                _ingredients![index];
                return Text("");
              },
            ),
          ),*/
          ],
        ),
      ),
    );
  }
}

/*
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
 */