import 'package:flutter/material.dart';
import 'package:fuelperks/Views/splash_screen.dart';

void main() {
  runApp(const start());
}

class start extends StatelessWidget {
  const start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}

