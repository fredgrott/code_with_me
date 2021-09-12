// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Note: Colors of Text and Geometry need to flow through these things as
//       these themes are then part of the Typography ThemeData entry to
//       correctly flow through both light and dark themes and adjustments
//       for high contrast.

// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';

TextTheme myTall = const TextTheme(
  headline1: TextStyle(
      debugLabel: 'tall headline1 2018',
      fontSize: 96.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,),
  headline2: TextStyle(
      debugLabel: 'tall headline2 2018',
      fontSize: 60.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,),
  headline3: TextStyle(
      debugLabel: 'tall headline3 2018',
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,),
  headline4: TextStyle(
      debugLabel: 'tall headline4 2018',
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,),
  headline5: TextStyle(
      debugLabel: 'tall headline5 2018',
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,),
  headline6: TextStyle(
      debugLabel: 'tall headline6 2018',
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      textBaseline: TextBaseline.alphabetic,),
  bodyText1: TextStyle(
      debugLabel: 'tall bodyText1 2018',
      fontSize: 17.0,
      fontWeight: FontWeight.w700,
      textBaseline: TextBaseline.alphabetic,),
  bodyText2: TextStyle(
      debugLabel: 'tall bodyText2 2018',
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,),
  subtitle1: TextStyle(
      debugLabel: 'tall subtitle1 2018',
      fontSize: 17.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,),
  subtitle2: TextStyle(
      debugLabel: 'tall subtitle2 2018',
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      textBaseline: TextBaseline.alphabetic,),
  button: TextStyle(
      debugLabel: 'tall button 2018',
      fontSize: 15.0,
      fontWeight: FontWeight.w700,
      textBaseline: TextBaseline.alphabetic,),
  caption: TextStyle(
      debugLabel: 'tall caption 2018',
      fontSize: 13.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,),
  overline: TextStyle(
      debugLabel: 'tall overline 2018',
      fontSize: 11.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,),
);

TextTheme myDense = const TextTheme(
  headline1: TextStyle(
      debugLabel: 'dense headline1 2018',
      fontSize: 96.0,
      fontWeight: FontWeight.w100,
      textBaseline: TextBaseline.ideographic,),
  headline2: TextStyle(
      debugLabel: 'dense headline2 2018',
      fontSize: 60.0,
      fontWeight: FontWeight.w100,
      textBaseline: TextBaseline.ideographic,),
  headline3: TextStyle(
      debugLabel: 'dense headline3 2018',
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.ideographic,),
  headline4: TextStyle(
      debugLabel: 'dense headline4 2018',
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.ideographic,),
  headline5: TextStyle(
      debugLabel: 'dense headline5 2018',
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.ideographic,),
  headline6: TextStyle(
      debugLabel: 'dense headline6 2018',
      fontSize: 21.0,
      fontWeight: FontWeight.w500,
      textBaseline: TextBaseline.ideographic,),
  bodyText1: TextStyle(
      debugLabel: 'dense bodyText1 2018',
      fontSize: 17.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.ideographic,),
  bodyText2: TextStyle(
      debugLabel: 'dense bodyText2 2018',
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.ideographic,),
  subtitle1: TextStyle(
      debugLabel: 'dense subtitle1 2018',
      fontSize: 17.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.ideographic,),
  subtitle2: TextStyle(
      debugLabel: 'dense subtitle2 2018',
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      textBaseline: TextBaseline.ideographic,),
  button: TextStyle(
      debugLabel: 'dense button 2018',
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      textBaseline: TextBaseline.ideographic,),
  caption: TextStyle(
      debugLabel: 'dense caption 2018',
      fontSize: 13.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.ideographic,),
  overline: TextStyle(
      debugLabel: 'dense overline 2018',
      fontSize: 11.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.ideographic,),
);

TextTheme myEnglishLike = const TextTheme(
  headline1: TextStyle(
      debugLabel: 'englishLike headline1 2018',
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: -1.5,),
  headline2: TextStyle(
      debugLabel: 'englishLike headline2 2018',
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: -0.5,),
  headline3: TextStyle(
      debugLabel: 'englishLike headline3 2018',
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.0,),
  headline4: TextStyle(
      debugLabel: 'englishLike headline4 2018',
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.25,),
  headline5: TextStyle(
      debugLabel: 'englishLike headline5 2018',
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.0,),
  headline6: TextStyle(
      debugLabel: 'englishLike headline6 2018',
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.15,),
  bodyText1: TextStyle(
      debugLabel: 'englishLike bodyText1 2018',
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.5,),
  bodyText2: TextStyle(
      debugLabel: 'englishLike bodyText2 2018',
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.25,),
  subtitle1: TextStyle(
      debugLabel: 'englishLike subtitle1 2018',
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.15,),
  subtitle2: TextStyle(
      debugLabel: 'englishLike subtitle2 2018',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.1,),
  button: TextStyle(
      debugLabel: 'englishLike button 2018',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 1.25,),
  caption: TextStyle(
      debugLabel: 'englishLike caption 2018',
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 0.4,),
  overline: TextStyle(
      debugLabel: 'englishLike overline 2018',
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      textBaseline: TextBaseline.alphabetic,
      letterSpacing: 1.5,),
);

TextTheme myBlack = const TextTheme(
  headline1: TextStyle(
      debugLabel: 'blackMountainView headline1',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black54,
      decoration: TextDecoration.none,),
  headline2: TextStyle(
      debugLabel: 'blackMountainView headline2',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black54,
      decoration: TextDecoration.none,),
  headline3: TextStyle(
      debugLabel: 'blackMountainView headline3',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black54,
      decoration: TextDecoration.none,),
  headline4: TextStyle(
      debugLabel: 'blackMountainView headline4',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black54,
      decoration: TextDecoration.none,),
  headline5: TextStyle(
      debugLabel: 'blackMountainView headline5',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black87,
      decoration: TextDecoration.none,),
  headline6: TextStyle(
      debugLabel: 'blackMountainView headline6',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black87,
      decoration: TextDecoration.none,),
  bodyText1: TextStyle(
      debugLabel: 'blackMountainView bodyText1',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black87,
      decoration: TextDecoration.none,),
  bodyText2: TextStyle(
      debugLabel: 'blackMountainView bodyText2',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black87,
      decoration: TextDecoration.none,),
  subtitle1: TextStyle(
      debugLabel: 'blackMountainView subtitle1',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black87,
      decoration: TextDecoration.none,),
  subtitle2: TextStyle(
      debugLabel: 'blackMountainView subtitle2',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black,
      decoration: TextDecoration.none,),
  caption: TextStyle(
      debugLabel: 'blackMountainView caption',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black54,
      decoration: TextDecoration.none,),
  button: TextStyle(
      debugLabel: 'blackMountainView button',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black87,
      decoration: TextDecoration.none,),
  overline: TextStyle(
      debugLabel: 'blackMountainView overline',
      //fontFamily: 'Roboto',
      inherit: true,
      color: Colors.black,
      decoration: TextDecoration.none,),
);

TextTheme myWhite = const TextTheme(
  headline1 : TextStyle(
    debugLabel: 'whiteMountainView headline1', 
    //fontFamily: 'Roboto', 
    inherit: true, color: 
    Colors.white70, 
    decoration: TextDecoration.none,),
  headline2 : TextStyle(
    debugLabel: 'whiteMountainView headline2', 
    fontFamily: 'Roboto', 
    inherit: true, color: 
    Colors.white70, 
    decoration: TextDecoration.none,),
 headline3 : TextStyle(
   debugLabel: 'whiteMountainView headline3', 
   //fontFamily: 'Roboto', 
   inherit: true, 
   color: Colors.white70, 
   decoration: TextDecoration.none,),
 headline4 : TextStyle(
   debugLabel: 'whiteMountainView headline4', 
   //fontFamily: 'Roboto', 
   inherit: true, 
   color: Colors.white70, 
   decoration: TextDecoration.none,),
 headline5 : TextStyle(
   debugLabel: 'whiteMountainView headline5', 
   //fontFamily: 'Roboto', 
   inherit: true, 
   color: Colors.white,   
   decoration: TextDecoration.none,),
 headline6 : TextStyle(
   debugLabel: 'whiteMountainView headline6', 
   //fontFamily: 'Roboto', 
   inherit: true, 
   color: Colors.white,   
   decoration: TextDecoration.none,),
 bodyText1 : TextStyle(
   debugLabel: 'whiteMountainView bodyText1', 
   //fontFamily: 'Roboto', 
   inherit: true, 
   color: Colors.white,   
   decoration: TextDecoration.none,),
 bodyText2 : TextStyle(
   debugLabel: 'whiteMountainView bodyText2', 
   //fontFamily: 'Roboto', 
   inherit: true, 
   color: Colors.white,   
   decoration: TextDecoration.none,),
 subtitle1 : TextStyle(
   debugLabel: 'whiteMountainView subtitle1', 
   //fontFamily: 'Roboto', 
   inherit: true, 
   color: Colors.white,   
   decoration: TextDecoration.none,),
 subtitle2 : TextStyle(
   debugLabel: 'whiteMountainView subtitle2', 
   //fontFamily: 'Roboto', 
   inherit: true, color: 
   Colors.white,   
   decoration: TextDecoration.none,),
 caption   : TextStyle(
   debugLabel: 'whiteMountainView caption',   
   //fontFamily: 'Roboto', 
   inherit: true, 
   color: Colors.white70, 
   decoration: TextDecoration.none,),
 button    : TextStyle(
   debugLabel: 'whiteMountainView button',    
   //fontFamily: 'Roboto', inherit: true, 
   color: Colors.white,   
   decoration: TextDecoration.none,),
 overline  : TextStyle(
   debugLabel: 'whiteMountainView overline',  
   //fontFamily: 'Roboto', 
   inherit: true, 
   color: Colors.white,   
   decoration: TextDecoration.none,),
);