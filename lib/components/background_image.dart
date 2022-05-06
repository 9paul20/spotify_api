import 'package:flutter/material.dart';

import '../const/variable_const.dart';
import 'curve.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        height: size.height * 0.55,
        color: blueGrey.withOpacity(0.8),
        child: const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: appPadding / 2,
              vertical: appPadding * 3),
          child: Center(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
