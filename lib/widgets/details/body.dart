import 'package:flutter/material.dart';
import 'package:spotify_api/models/recipe.dart';
import 'package:spotify_api/widgets/details/product_title_with_image.dart';

import '../../const/variable_const.dart';
import 'color_and_size.dart';

class Body extends StatelessWidget {
  final Recipe? recipe;

  const Body({Key? key, this.recipe}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.35),
              BlendMode.multiply,
            ),
            image: NetworkImage(
                "${recipe!.images}"
                  //"https://lh3.googleusercontent.com/-REdY9V2RJJvv5q4C_MqNW137nWg-llv2nC6fw_pw6axtevrmIAVLLTd3_0WHni-L3Sz1Poq8dFoAm7f21CwAAfpl9tj4sHhUGE=s360"
                ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: appPadding,
                      right: appPadding,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(recipe: recipe),
                        Text("I'm the recipe: ${recipe!.name}"),
                        SizedBox(height: appPadding / 2),
                        //Description(recipe: recipe),
                        SizedBox(height: appPadding / 2),
                        SizedBox(height: appPadding / 2),
                      ],
                    ),
                  ),
                  ProductTitleWithImage(recipe: recipe)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}