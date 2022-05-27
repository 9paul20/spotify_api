import 'package:flutter/cupertino.dart';
import '../screens/home.dart';
import '../screens/splash_screen.dart';
import '../screens/welcome_screen.dart';
import '../screens/details.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/splash':(BuildContext context) => SplashScreen(),
    '/login':(BuildContext context) => Welcome(),
    '/home':(BuildContext context) => Home(),
    '/details':(BuildContext context) => Details(),
  };
}