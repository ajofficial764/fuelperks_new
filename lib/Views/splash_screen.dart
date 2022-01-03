import 'package:flutter/material.dart';
import 'package:fuelperks/Views/home_screen.dart';
import 'package:fuelperks/colors.dart';
import 'package:splashscreen/splashscreen.dart';

class splash_screen extends StatelessWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SplashScreen(
        backgroundColor: base_color,
        seconds: 4,
        image: Image.asset('images/logo.png' , color: Colors.white, height: 200,),
        loaderColor: Colors.white,
        photoSize: 200,
        navigateAfterSeconds: const home_screen(),
      ),
    );
  }
}
