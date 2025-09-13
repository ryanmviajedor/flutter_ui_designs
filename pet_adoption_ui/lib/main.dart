import 'package:flutter/material.dart';
import 'package:pet_adoption_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pet Adoption UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFFFD6456)),
      home: HomeScreen(),
    );
  }
}
