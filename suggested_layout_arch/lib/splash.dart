// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// It's okay to have this just as plain non-platform dynamically determined 
// widgets as we are not doing a navigation to other screens with 
// one scaffold as main, instead myapp scaffolds are the ones that 
// become main for the app.
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe1f5fe).withOpacity(1.0),
      body: Center(child: Image.asset('assets/splash.png')),
    );
  }
}
