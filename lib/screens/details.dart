import 'package:flutter/material.dart';

import '../const/variable_const.dart';
import '../models/recipe.dart';

class Details extends StatelessWidget {
  const Details({Key? key, this.recipe}) : super(key: key);
    final Recipe? recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      /*
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
      */
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      /*
      backgroundColor: product.color,
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
       */
    );
  }
}