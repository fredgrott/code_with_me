// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// My App TextStyles for both Material And Cupertino Platforms

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:suggested_layout_arch/features/app/themes/my_color_schemes.dart';

// This uses the MaterialBasedCupertinoThemeData mechs so that
// we have one base text theme for both Material and Cupertino widgets
TextTheme myBaseTextTheme = TextTheme(
  headline1: myHeadline1,
  headline2: myHeadline2,
  headline3: myHeadline3,
  headline4: myHeadline4,
  headline5: myHeadline5,
  headline6: myHeadline6,
  subtitle1: mySubtitle1,
  subtitle2: mySubtitle2,
  bodyText1: myBodytext1,
  bodyText2: myBodytext2,
  caption: myCaption,
  button: myButton,
  overline: myOverline,
);

TextStyle myHeadline1 = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 96,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    letterSpacing: -1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline1',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadline2 = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 60,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline2',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadline3 = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 48,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline3',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadline4 = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 34,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline4',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadline5 = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline5',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadline6 = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Headline6',
    overflow: TextOverflow.fade,
  ),
);

TextStyle mySubtitle1 = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.15,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Subtitle1',
    overflow: TextOverflow.fade,
  ),
);

TextStyle mySubtitle2 = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.1,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Subtitle2',
    overflow: TextOverflow.fade,
  ),
);
TextStyle myBodytext1 = GoogleFonts.notoSans(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Bodytext1',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myBodytext2 = GoogleFonts.notoSans(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Bodytext2',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myCaption = GoogleFonts.notoSans(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.4,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Caption',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myButton = GoogleFonts.notoSans(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.25,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Button',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myOverline = GoogleFonts.notoSans(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Overline',
    overflow: TextOverflow.fade,
  ),
);

TextStyle mySnackbarTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myTabbarLabelTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myTabbarUnselectedLabelTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myTooltipTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myTimePickerHelpTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myTimePickerHourTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myMaterialPopupMenuTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myDataTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myHeadingTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myMaterialDialogTitleTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myMaterialDialogContentTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myTimePickerDayTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myTextFieldTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

StrutStyle myTextFieldStrutStyle = const StrutStyle(
  
);

TextStyle myTextFormFieldTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

StrutStyle myTextFormFieldStrutStyle = const StrutStyle();

TextStyle myCupertinoDialogActionTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myUnselectedLabelStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle mySelectedLabelStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);

TextStyle myBannerContentTextStyle = GoogleFonts.notoSerif(
  textStyle: TextStyle(
    // ignore: avoid_redundant_argument_values
    inherit: true,
    color: myColorSchemes.onSurface,
    backgroundColor: myColorSchemes.background,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    textBaseline: TextBaseline.alphabetic,
    leadingDistribution: TextLeadingDistribution.even,
    debugLabel: 'Snackbar',
    overflow: TextOverflow.fade,
  ),
);
