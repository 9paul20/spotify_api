import 'package:flutter/material.dart';
import 'package:spotify_api/widgets/login/circle.dart';
import 'package:spotify_api/widgets/login/login_credentials.dart';

import '../widgets/login/background_image.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BackgroundImage(),
                LoginCredentials(),
              ],
            ),
            const CircleButton(),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF1F1F1),
    );
  }
}
