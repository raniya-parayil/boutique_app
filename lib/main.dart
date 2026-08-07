import 'package:boutique_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BoutiqueApp());
}

class BoutiqueApp extends StatelessWidget {
  const BoutiqueApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boutique App',
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}
