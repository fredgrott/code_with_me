// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_textstyles.dart';
import 'package:suggested_layout_arch/features/app/themes/my_color_schemes.dart';



ButtonStyle myElevateButtonStyle = ButtonStyle(
  textStyle: MaterialStateProperty.all(myButton),
  backgroundColor: MaterialStateProperty.all(myColorSchemes.background),
  foregroundColor: MaterialStateProperty.all(myColorSchemes.primary),
  overlayColor: MaterialStateProperty.all(myColorSchemes.primaryVariant),
  shadowColor: MaterialStateProperty.all(myColorSchemes.secondary),
  elevation: MaterialStateProperty.all(12),
  padding: MaterialStateProperty.all(EdgeInsetsGeometry.infinity),
  minimumSize: MaterialStateProperty.all(const Size(10, 10)),
  fixedSize: MaterialStateProperty.all(const Size(20, 20)),
  maximumSize: MaterialStateProperty.all(const Size(24, 24)),
  // ignore: avoid_redundant_argument_values
  side: MaterialStateProperty.all(BorderSide(color: myColorSchemes.secondary, width: 2, style: BorderStyle.solid)),
  //shape: MaterialStateProperty.all(OutlinedBorder.)
  mouseCursor: MaterialStateProperty.all(MouseCursor.defer),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  tapTargetSize: MaterialTapTargetSize.padded,
  animationDuration: const Duration(seconds: 2),
  enableFeedback: true,
  //alignment: AlignmentGeometry.
  //splashFactory: InteractiveInkFeatureFactory()
);

ButtonStyle myTextButtonStyle = ButtonStyle(
  textStyle: MaterialStateProperty.all(myButton),
  backgroundColor: MaterialStateProperty.all(myColorSchemes.background),
  foregroundColor: MaterialStateProperty.all(myColorSchemes.primary),
  overlayColor: MaterialStateProperty.all(myColorSchemes.primaryVariant),
  shadowColor: MaterialStateProperty.all(myColorSchemes.secondary),
  elevation: MaterialStateProperty.all(12),
  padding: MaterialStateProperty.all(EdgeInsetsGeometry.infinity),
  minimumSize: MaterialStateProperty.all(const Size(10, 10)),
  fixedSize: MaterialStateProperty.all(const Size(20, 20)),
  maximumSize: MaterialStateProperty.all(const Size(24, 24)),
  // ignore: avoid_redundant_argument_values
  side: MaterialStateProperty.all(BorderSide(color: myColorSchemes.secondary, width: 2, style: BorderStyle.solid)),
  //shape: MaterialStateProperty.all(OutlinedBorder.)
  mouseCursor: MaterialStateProperty.all(MouseCursor.defer),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  tapTargetSize: MaterialTapTargetSize.padded,
  animationDuration: const Duration(seconds: 2),
  enableFeedback: true,
  //alignment: AlignmentGeometry.
  //splashFactory: InteractiveInkFeatureFactory()

);

ButtonStyle myOutlineButtonStyle = ButtonStyle(
  textStyle: MaterialStateProperty.all(myButton),
  backgroundColor: MaterialStateProperty.all(myColorSchemes.background),
  foregroundColor: MaterialStateProperty.all(myColorSchemes.primary),
  overlayColor: MaterialStateProperty.all(myColorSchemes.primaryVariant),
  shadowColor: MaterialStateProperty.all(myColorSchemes.secondary),
  elevation: MaterialStateProperty.all(12),
  padding: MaterialStateProperty.all(EdgeInsetsGeometry.infinity),
  minimumSize: MaterialStateProperty.all(const Size(10, 10)),
  fixedSize: MaterialStateProperty.all(const Size(20, 20)),
  maximumSize: MaterialStateProperty.all(const Size(24, 24)),
  // ignore: avoid_redundant_argument_values
  side: MaterialStateProperty.all(BorderSide(color: myColorSchemes.secondary, width: 2, style: BorderStyle.solid)),
  //shape: MaterialStateProperty.all(OutlinedBorder.)
  mouseCursor: MaterialStateProperty.all(MouseCursor.defer),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  tapTargetSize: MaterialTapTargetSize.padded,
  animationDuration: const Duration(seconds: 2),
  enableFeedback: true,
  //alignment: AlignmentGeometry.
  //splashFactory: InteractiveInkFeatureFactory()
);
