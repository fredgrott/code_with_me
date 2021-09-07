// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:shaped_navbars/clippers.dart';
import 'package:shaped_navbars/my_color_schemes.dart';

// Note: Because the way we are executing the navbar shape is outside of 
//       the appbar and bottomnavbar widgets we must have a way to theme
//       it. So the gradients are defined via the theme colors.
//
//       If the bars have gradients the first gradient is the end color of appbar 
//       and the start color of the bottom nav bar gradient.
//
//       Kept loosely coupled to themes to allow some creative alterations when 
//       needed in branding.

const List<Color> appBarGradients = [
  myPrimaryColor,
  myBarBackgroundColor,
  myScaffoldBackgroundColor,
];

const List<Color> bottomNavBarGradients = [
  mySecondaryColor,
  mySecondaryVariantColor,
];

class WavyHeader extends StatelessWidget {
  const WavyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopWaveClipper(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: appBarGradients,
            begin: Alignment.topLeft,
            end: Alignment.center,
          ),
        ),
        height: MediaQuery.of(context).size.height / 2.5,
      ),
    );
  }
}

class WavyFooter extends StatelessWidget {
  const WavyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FooterWaveClipper(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: bottomNavBarGradients,
            begin: Alignment.center,
            end: Alignment.bottomRight,
          ),
        ),
        height: MediaQuery.of(context).size.height / 3,
      ),
    );
  }
}
