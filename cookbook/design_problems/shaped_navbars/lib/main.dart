import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shaped_navbars/my_material_theme_data.dart';
import 'package:shaped_navbars/myhomepage.dart';

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
      title: 'Shaped Navbars',
      theme: lightTheme,
      builder: (_, __) => ResponsiveWrapper.builder(
        const MyHomePage(
          title: 'Shaped Navbars',
        ),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),

    );

    
  }
}


