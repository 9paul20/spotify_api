import 'package:flutter/material.dart';
import '../../const/variable_const.dart';
import '../../models/recipe.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    @required this.recipe,
  }) : super(key: key);

  final Recipe? recipe;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Receta: ",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            recipe!.name!,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: appPadding),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Tiempo Receta\n"),
                    TextSpan(
                      text: "${recipe!.totalTime!}",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}