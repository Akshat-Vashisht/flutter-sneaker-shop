import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/about_page.dart';
import 'package:sneaker_shop/pages/intro_page.dart';
import 'package:sneaker_shop/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sneaker Shop',
      home: const IntroPage(),
      routes: {
        '/profile_page': (context) => const ProfilePage(),
        '/about_page': (context) => const AboutPage(),
        '/intro_page': (context) => const IntroPage(),
      },
    );
  }
}
