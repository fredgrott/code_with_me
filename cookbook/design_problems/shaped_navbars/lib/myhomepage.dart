// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shaped_navbars/content_card.dart';
import 'package:shaped_navbars/navbar_decorations.dart';

// Note: In Flutter we can set a screen as home via navigation routes so that
//       we only have to define the scaffold, appbar, and other navbars only once
//       for every screen of the app.

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shaped navbars'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.plus_one, color: Colors.white),
              onPressed: () => log("icon tapped"),),
          IconButton(
              icon: const Icon(Icons.cake, color: Colors.white),
              onPressed: () => log("icon tapped"),),
        ],
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: const <Widget>[
          NavBarDecorations(),
          ContentCard(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_photo_alternate),
              label: "photo",),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm), label: "alarm",),
        ],
        onTap: (int i) => log("you pressed $i"),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
