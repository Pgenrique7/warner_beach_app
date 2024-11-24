import 'package:flutter/material.dart';
import '../widgets/button_row.dart';
import '../widgets/image_with_gradient.dart';
import '../widgets/menu_list_view.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(26, 33, 43, 1),
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
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      ButtonRow(),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ImageWithGradientAndText(
                                    imagePath: 'assets/imagen_atracciones.jpg',
                                    label: 'Atracciones',
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: ImageWithGradientAndText(
                                    imagePath: 'assets/imagen_restaurantes.jpg',
                                    label: 'Restaurantes',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            ImageWithGradientAndText(
                              imagePath: 'assets/imagen_mapa.jpg',
                              label: 'Mapa',
                            ),
                          ],
                        ),
                      ),
                      MenuListView(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
