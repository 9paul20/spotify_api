import 'package:flutter/material.dart';
import 'package:spotify_api/models/recipe.dart';
import '../../const/variable_const.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    @required this.recipe,
  }) : super(key: key);

  final Recipe? recipe;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: textColor),
              children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                  //text: "${product.size} cm",
                  text: "16 cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
