import 'package:flutter/material.dart';
import 'package:parcial3/paginas/vistaAPI.dart';
import 'package:parcial3/paginas/Slider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API',
      initialRoute: '/',
      routes: {
        '/': (context) => slider(),
        '/vistaAPI': (context) => vistaAPI(),
      },
    );
  }
}
