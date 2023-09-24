import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:splashscreen/splashscreen.dart';

import 'home.dart';

class MySplash extends StatefulWidget {
  @override
  _MySpalshState createState() => _MySpalshState();
}

class _MySpalshState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Home(),
      title: Text(
        'IFruit',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
        ),
      ),
      image: Image.asset('assets/images/fruit.jpg'),
      photoSize: 50,
      gradientBackground: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.004,
            1
          ],
          colors: [
            (Colors.blueGrey),
            (Colors.lightBlue),
          ]),
      loaderColor: Colors.white,
    );
  }
}
