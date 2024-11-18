import 'package:flutter/material.dart';
import 'package:warner_beach_app/config/router/app_router.dart';
import 'package:warner_beach_app/config/router/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Warner Beach Madrid',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme(selectedColor: 2).getTheme(),
    );
  }
}