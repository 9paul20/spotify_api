import 'package:flutter/material.dart';
import 'package:spotify_api/models/recipe.dart';
import '../../const/variable_const.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    @required this.recipe,
  }) : super(key: key);

  final Recipe? recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: appPadding),
      child: Text(
        "${recipe!.totalTimeInSeconds!}",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}