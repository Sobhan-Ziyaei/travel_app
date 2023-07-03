import 'package:flutter/material.dart';
import 'package:splash_view/splash_view.dart';
import 'package:travel_app/ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(
        logo: const Text(
          'Explore Your Favorite Journey',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        subtitle: const Text(
          "Let's Make Our Life better",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundImageDecoration: const BackgroundImageDecoration(
          image: AssetImage('assets/images/jungle.jpg'),
          fit: BoxFit.cover,
        ),
        duration: const Duration(seconds: 4),
        done: Done(
          HomeScreen(),
          animationDuration: const Duration(seconds: 0),
        ),
      ),
    );
  }
}
