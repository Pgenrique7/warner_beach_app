import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromRGBO(26, 33, 43, 1),
      appBar: AppBar(
        toolbarHeight: 120.0, 
        backgroundColor: const Color.fromRGBO(26, 33, 43, 1),
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Image.asset(
            'assets/warner_beach_banner.jpg',
            fit: BoxFit.contain,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () {
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined, color: Colors.white), 
            onPressed: () {
            },
          ),
        ],
      ),
      body: Container(
        decoration:  BoxDecoration(borderRadius: BorderRadius.circular(2), color: const Color.fromARGB(1, 255, 255, 255)),
        child: Expanded(
          child: Row(
          children: [
            Expanded(child: 
              TextButton.icon(
                label: const Text('Buscar'),
                onPressed: () {}, 
                icon: const Icon(Icons.search),
              )
            ),
            Expanded(child: 
              TextButton.icon(
                label: const Text("Mis entradas"),
                onPressed: () {}, 
                icon: const Icon(Icons.airplane_ticket_outlined),
              )
            )
          ],
          ),
        )
      ),
    );
  }
}
