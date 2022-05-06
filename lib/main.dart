import 'package:flutter/material.dart';
import 'package:spotify_api/routes/routes.dart';
import 'package:spotify_api/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: getApplicationRoutes(),
      home:const SplashScreen(),
    );
  }
}
