import 'package:curved_bars/my_material_theme_data.dart';
import 'package:curved_bars/myshapedborder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curved Bars',
      theme: lightTheme,
      home: const MyHomePage(title: 'Curved Bars'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // ignore: avoid_unused_constructor_parameters
  const MyHomePage({Key? key, String? title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const curveHeight = 50.0;

    return Scaffold(
      appBar: AppBar(
        shape: const MyShapeBorder(curveHeight),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: curveHeight),
        children: List.generate(
          100,
          (i) => Text('This is item $i in this list'),
        ),
      ),
      
    );
  }
}

