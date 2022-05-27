import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const/variable_const.dart';
import '../models/recipe.dart';
import '../widgets/details/body.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Recipe? recipe;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final recipeBook =
      ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    recipe = recipeBook['map'];

    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(recipe: recipe),
      /*
      body: Body(product: product),
      */
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(

      backgroundColor: Color(0xFF1664A3),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        SizedBox(width: appPadding / 2)
      ],
    );
  }
}