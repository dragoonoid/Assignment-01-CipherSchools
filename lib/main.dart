import 'package:cipher_schools/views/courses.dart';
import 'package:cipher_schools/views/home.dart';
import 'package:cipher_schools/widgets/animated%20widgets/splash.dart';
import 'package:flutter/material.dart';
/* */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Home(),
        '/courses': (context) => const CoursesView(),
        '/splash': (context) => const SplashScreen(),
      },
    );
  }
}
