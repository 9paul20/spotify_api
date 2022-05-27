import 'package:flutter/material.dart';
import 'package:spotify_api/routes/routes.dart';
import 'package:spotify_api/screens/splash_screen.dart';

import 'const/variable_const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recetas',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: primary),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: getApplicationRoutes(),
      home:const SplashScreen(),
    );
  }
}
