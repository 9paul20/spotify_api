import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify_api/screens/welcome_screen.dart';
import '../animations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with WidgetsBindingObserver{

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Welcome()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF1664A3), Color(0xFF2196F3)],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: const AnimationBubble(50),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Image.asset("assets/images/logo.png"),]
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                CircularProgressIndicator(color: Colors.white),
                Text(
                  "From",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 6,),
                Text(
                  "ISC",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 40.0)),
              ]
          ),
        ],
      ),
    );
  }
}
