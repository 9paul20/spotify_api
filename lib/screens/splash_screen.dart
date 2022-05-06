import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:spotify_api/screens/welcome_screen.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:supercharged_dart/supercharged_dart.dart';
import 'dart:math';

class SplashScreen extends StatefulWidget {
  const SplashScreen(this.numberOfParticles ,{Key? key}) : super(key: key);
  final int numberOfParticles;



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with WidgetsBindingObserver{
  final List<ParticleModel> particles = [];

  @override
  void initState() {
    widget.numberOfParticles.times(() => particles.add(ParticleModel()));
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    //print("-didChangeAppLifecycleState-" + state.toString());
    if (state == AppLifecycleState.resumed) {
      // particles.forEach((particle) {
      for (var particle in particles) {
        particle.restart();
        particle.shuffle();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const Welcome(),
      duration: 2000,
      imageSize: 130,
      imageSrc: "assets/images/logo.png",
      backgroundColor: Colors.blueGrey,
    );
  }
}
