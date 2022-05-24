
import 'package:flutter/cupertino.dart';

import '../screens/home.dart';
import '../screens/splash_screen.dart';
import '../screens/welcome_screen.dart';
import '../screens/details.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    'splash':(BuildContext context) =>const SplashScreen(),
    'login':(BuildContext context) =>const Welcome(),
    'home':(BuildContext context) =>const Home(),
    'details':(BuildContext context) =>const Details(),
  };
}