import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/views/courses.dart';
import 'package:cipher_schools/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: textStyleOrange1,
          headline2: textStyleOrange2,
          headline3: textStyleOrange3,
          
        ),
      ),
      routes: {
        '/': (context) => const Home(),
        '/courses': (context)=> const CoursesView()
      },
    );
  }
}
