import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: const Color.fromRGBO(26, 33, 43, 1),
        flexibleSpace: Image.asset(
          'assets/warner_beach_banner2.png',
        ),
      ),
      body: const Placeholder(),
    );
  }
}
