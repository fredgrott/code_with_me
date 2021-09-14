// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:list_boilerplate/src/features/themes/fredgrott_theme_extensions.dart';

// Note: Not all colors are flowing through widget components as
//       colorschemes so have to do individual light, dark, lighthc, and
//       darkhc palettes.
//
//       Added colors to correspond to updated Material spec are:
//        shadowColor
//
//       Dark Mode Colors:
//          Surface lighter black
//          Background darker than the surface black
//          appbars and navbars the surface color needs to be
//          a combination of Color(0xff121212) and 0.08 opacity
//          of primary, primaryvariant, secondary, or secondaryvariant
//
//        On WEARABLES we need pure or true black as background to conserve
//        battery usage.
//
//        Go for lighter colors in palette band rather then the darker color
//        as want to reduce and eliminate the optical vibration that occurs
//        when used against dark backgrounds.
//
//         Dark Mode standards
//         light theme    primary tone 50
//         light theme    primary 200
//         light theme    primary variant 700
//         light theme    secondary tone 50
//         light theme    secondary 200
//         light theme    secondary variant 700
//         dark    error dark 200, ie light error color combined with 40% white
//         light    error light 700
//         dark    background pure #121212
//         dark   surface a lighter #121212
//         dark    onPrimary #000000
//         dark    onSecondary #000000
//         dark   onSurface #000000
//         dark   onError #000000
//         dark  primaryOverlay  hovered, focused, pressed, dragged,enabled(0% overlay )
//         light primaryOverlay
//         dark disabled 12% white mixed with primary for outlines and 38% white for labels and icons
//
//         popups and dialogs get surface light color and light onSurface applied in dark mode
//
//         Use extra containers that change their  primary colors that have
//         transparency upon state changes, ie reuse theme mode trick
//
//         I do some minor modifications of the material color system:
//              tones set to 100 rather than 50 so as to be able to use accents on HC themes
//
//              one of my colorscheme palette styles is to use AccentColors on light theme
//              and non accent on light high contrast and the same way for dark theme
//              and dark high contrast themes. Also I switch to 400 instead of 700 to
//              fit into using accents on two of the four themes


// Flutter Docs say 13, nope its wrong we should have 33 colors

// Light Palette Theme
final Color lightPrimaryToneColor = Colors.purple.shade50;
final Color lightPrimaryColor = Colors.purple.shade200;
final Color lightPrimaryVariantColor = Colors.purple.shade700;
final Color lightSecondaryToneColor = Colors.teal.shade50;
final Color lightSecondaryColor = Colors.teal.shade200;
final Color lightSecondaryVariantColor = Colors.teal.shade700;
final Color lightErrorColor = Colors.red.shade700;
const Color lightBackgroundColor = Colors.white;
const Color lightSurfaceColor = Colors.white;

const Color lightOnPrimaryToneColor = Colors.black;
const Color lightOnPrimaryColor = Colors.black;
const Color lightOnPrimaryVariantColor = Colors.black;
const Color lightOnSecondaryToneColor = Colors.black;
const Color lightOnSecondaryColor = Colors.black;
const Color lightOnSecondaryVariantColor = Colors.black;
const Color lightOnSurfaceColor = Colors.black;
const Color lightOnBackgroundColor = Colors.black;
const Color lightOnErrorColor = Colors.black;

// a guess, might change as unsure how to do this as thinking about an overlay with
// transparency in which case keep the opacity and change from purple to white
// in short words varying white via opacity which then gets over layed
// via my portal overlay fork. This would mean that I always do a portal
// root widget at the root of the screen(feature)
final Color lightPrimaryHoveredOverlayColor =
    Colors.white.withOpacity(0.04); // purple 200 at 4% white overlay
final Color lightPrimaryFocusedOverlayColor =
    Colors.white.withOpacity(0.14); // purple 200 at 4% white overlay
final Color lightPrimaryPressedOverlayColor =
    Colors.white.withOpacity(0.24); // purple 200 at 4% white overlay
final Color lightPrimaryDraggedOverlayColor =
    Colors.white.withOpacity(0.34); // purple 200 at 4% white overlay
const Color lightDisabledIconColor = Colors.grey;
const Color lightDisabledOutlineColor = Colors.blueGrey;
final Color lightDisabledLabelColor = Colors.blueGrey.shade200;
const Color lightShadowColor = Colors.black38; // black 12%
final Color lightDialogPopupOutlineColor = Colors.purple.shade50; //purple50
final Color lightDialogPopupLabelFillColor = Colors.purple.shade200;
final Color lightAppBarColor = Colors.purple.shade200;
final Color lightBottomAppBarColor = Colors.purple.shade700;
final Color lightBottomNavBarColor = Colors.purple.shade700;
final Color lightBannerColor = Colors.purple.shade50;
final Color lightCardColor = Colors.purple.shade50; //purple50

// Light High Contrast Theme
// Generally for this version anything not white gets lighten by a percentage
// ignore: avoid_redundant_argument_values
final Color lightHighContrastPrimaryToneColor =
    // ignore: avoid_redundant_argument_values
    Colors.purple.shade50.lighten(10);
// ignore: avoid_redundant_argument_values
final Color lightHighContrastPrimaryColor = Colors.purple.shade200.lighten(10);
// ignore: avoid_redundant_argument_values
final Color lightHighContrastPrimaryVariantColor =
    // ignore: avoid_redundant_argument_values
    Colors.purple.shade700.lighten(10);
// ignore: avoid_redundant_argument_values
final Color lightHighContrastSecondaryToneColor =
    // ignore: avoid_redundant_argument_values
    Colors.teal.shade50.lighten(10);
// ignore: avoid_redundant_argument_values
final Color lightHighContrastSecondaryColor = Colors.teal.shade200.lighten(10);
// ignore: avoid_redundant_argument_values
final Color lightHighContrastSecondaryVariantColor =
    // ignore: avoid_redundant_argument_values
    Colors.teal.shade700.lighten(10);
// ignore: avoid_redundant_argument_values
final Color lightHighContrastErrorColor = Colors.red.shade700.lighten(10);
const Color lightHighContrastBackgroundColor = Colors.white;
const Color lightHighContrastSurfaceColor = Colors.white;

const Color lightHighContrastOnPrimaryToneColor = Colors.black;
const Color lightHighContrastOnPrimaryColor = Colors.black;
const Color lightHighContrastOnPrimaryVariantColor = Colors.black;
const Color lightHighContrastOnSecondaryToneColor = Colors.black;
const Color lightHighContrastOnSecondaryColor = Colors.black;
const Color lightHighContrastOnSecondaryVariantColor = Colors.black;
const Color lightHighContrastOnSurfaceColor = Colors.black;
const Color lightHighContrastOnBackgroundColor = Colors.black;
const Color lightHighContrastOnErrorColor = Colors.black;


final Color lightHighContrastPrimaryHoveredOverlayColor =
    Colors.white.withOpacity(0.04); // purple 200 at 4% white overlay
final Color lightHighContrastPrimaryFocusedOverlayColor =
    Colors.white.withOpacity(0.14); // purple 200 at 4% white overlay
final Color lightHighContrastPrimaryPressedOverlayColor =
    Colors.white.withOpacity(0.24); // purple 200 at 4% white overlay
final Color lightHighContrastPrimaryDraggedOverlayColor =
    Colors.white.withOpacity(0.34);
final Color lightHighContrastDisabledIconColor = Colors.grey.shade100;
final Color lightHighContrastDisabledOutlineColor = Colors.blueGrey.shade400;
final Color lightHighContrastDisabledLabelColor = Colors.blueGrey.shade100;
const Color lightHighContrastShadowColor = Colors.black12;
// ignore: avoid_redundant_argument_values
final Color lightHighContrastDialogPopupOutlineColor =
    // ignore: avoid_redundant_argument_values
    Colors.purple.shade50.lighten(10); //purple50
// ignore: avoid_redundant_argument_values
final Color lightHighContrastDialogPopupLabelFillColor =
    // ignore: avoid_redundant_argument_values
    Colors.purple.shade200.lighten(10);
// These three need to be adjusted with opacity or with grey
// ignore: avoid_redundant_argument_values
final Color lightHighContrastAppBarColor =
    // ignore: avoid_redundant_argument_values
    Colors.purpleAccent.shade200.lighten(10);
// ignore: avoid_redundant_argument_values
final Color lightHighContrastBottomAppBarColor =
    // ignore: avoid_redundant_argument_values
    Colors.purple.shade700.lighten(10);
// ignore: avoid_redundant_argument_values
final Color lightHighContrastBottomNavBarColor =
    // ignore: avoid_redundant_argument_values
    Colors.purple.shade700.lighten(10);

// ignore: avoid_redundant_argument_values
final Color lightHighContrastBannerColor = Colors.purple.shade50.lighten(10);
// ignore: avoid_redundant_argument_values
final Color lightHighContrastCardColor = Colors.purple.shade50.lighten(10);

// Dark Theme
// ignore: avoid_redundant_argument_values
final Color darkPrimaryToneColor = Colors.purple.shade50.darken(10);
// ignore: avoid_redundant_argument_values
final Color darkPrimaryColor = Colors.purple.shade200.darken(10);
// ignore: avoid_redundant_argument_values
final Color darkPrimaryVariantColor = Colors.purple.shade700.darken(10);
// ignore: avoid_redundant_argument_values
final Color darkSecondaryToneColor = Colors.teal.shade50.darken(10);
// ignore: avoid_redundant_argument_values
final Color darkSecondaryColor = Colors.teal.shade200.darken(10);
// ignore: avoid_redundant_argument_values
final Color darkSecondaryVariantColor = Colors.teal.shade700.darken(10);
// ignore: avoid_redundant_argument_values
final Color darkErrorColor = Colors.red.shade700.darken(10);
const Color darkBackgroundColor = Colors.white;
const Color darkSurfaceColor = Colors.white;

const Color darkOnPrimaryToneColor = Colors.white;
const Color darkOnPrimaryColor = Colors.white;
const Color darkOnPrimaryVariantColor = Colors.white;
const Color darkOnSecondaryToneColor = Colors.white;
const Color darkOnSecondaryColor = Colors.white;
const Color darkOnSecondaryVariantColor = Colors.white;
const Color darkOnSurfaceColor = Colors.white;
const Color darkOnBackgroundColor = Colors.white;
const Color darkOnErrorColor = Colors.white;


final Color darkPrimaryHoveredOverlayColor =
    Colors.white.withOpacity(0.04); // purple 200 at 4% white overlay
final Color darkPrimaryFocusedOverlayColor =
    Colors.white.withOpacity(0.14); // purple 200 at 4% white overlay
final Color darkPrimaryPressedOverlayColor = Colors.white.withOpacity(0.24);
const Color darkDisabledIconColor = Colors.grey;
const Color darkDisabledOutlineColor = Colors.blueGrey;
final Color darkDisabledLabelColor = Colors.blueGrey.shade200;
final Color darkShadowColor = Colors.grey.shade700; // black 12%
// ignore: avoid_redundant_argument_values
final Color darkDialogPopupOutlineColor =
    // ignore: avoid_redundant_argument_values
    Colors.purple.shade50.darken(10); //purple50
// ignore: avoid_redundant_argument_values
final Color darkDialogPopupLabelFillColor = Colors.purple.shade200.darken(10);
// ignore: avoid_redundant_argument_values
final Color darkAppBarColor =
    Colors.purple.shade200.blend(Colors.purple.shade200);
// ignore: avoid_redundant_argument_values
final Color darkBottomAppBarColor =
    Colors.purple.shade700.blend(Colors.purple.shade700);
// ignore: avoid_redundant_argument_values
final Color darkBottomNavBarColor =
    Colors.purple.shade700.blend(Colors.purple.shade700);
// ignore: avoid_redundant_argument_values
final Color darkBannerColor =
    Colors.purple.shade50.blend(Colors.purple.shade50);
// ignore: avoid_redundant_argument_values
final Color darkCardColor =
    Colors.purple.shade50.blend(Colors.purple.shade50); //purple50

// Dark High Contrast Theme
// ignore: avoid_redundant_argument_values
final Color darkHighContrastPrimaryToneColor = Colors.purple.shade50.darken(15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastPrimaryColor = Colors.purple.shade200.darken(15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastPrimaryVariantColor =
    Colors.purple.shade700.darken(15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastSecondaryToneColor = Colors.teal.shade50.darken(15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastSecondaryColor = Colors.teal.shade200.darken(15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastSecondaryVariantColor =
    Colors.teal.shade700.darken(15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastErrorColor = Colors.red.shade700.darken(15);
const Color darkHighContrastBackgroundColor = Colors.white;
const Color darkHighContrastSurfaceColor = Colors.white;

const Color darkHighContrastOnPrimaryToneColor = Colors.white;
const Color darkHighContrastOnPrimaryColor = Colors.white;
const Color darkHighContrastOnPrimaryVariantColor = Colors.white;
const Color darkHighContrastOnSecondaryToneColor = Colors.white;
const Color darkHighContrastOnSecondaryColor = Colors.white;
const Color darkHighContrastOnSecondaryVariantColor = Colors.white;
const Color darkHighContrastOnSurfaceColor = Colors.white;
const Color darkHighContrastOnBackgroundColor = Colors.white;
const Color darkHighContrastOnErrorColor = Colors.white;


final Color darkHighContrastPrimaryHoveredOverlayColor =
    Colors.white.withOpacity(0.04); // purple 200 at 4% white overlay
final Color darkHighContrastPrimaryFocusedOverlayColor =
    Colors.white.withOpacity(0.14); // purple 200 at 4% white overlay
final Color darkHighContrastPrimaryPressedOverlayColor =
    Colors.white.withOpacity(0.24);
const Color darkHighContrastDisabledIconColor = Colors.grey;
const Color darkHighContrastDisabledOutlineColor = Colors.blueGrey;
final Color darkHighContrastDisabledLabelColor = Colors.blueGrey.shade200;
final Color darkHighContrastShadowColor = Colors.grey.shade700; // black 12%
// ignore: avoid_redundant_argument_values
final Color darkHighContrastDialogPopupOutlineColor =
    Colors.purple.shade50.darken(15); //purple50
// ignore: avoid_redundant_argument_values
final Color darkHighContrastDialogPopupLabelFillColor =
    Colors.purple.shade200.darken(15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastAppBarColor =
    Colors.purple.shade200.blend(Colors.purple.shade200, 15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastBottomAppBarColor =
    Colors.purple.shade700.blend(Colors.purple.shade700, 15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastBottomNavBarColor =
    Colors.purple.shade700.blend(Colors.purple.shade700, 15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastBannerColor =
    Colors.purple.shade50.blend(Colors.purple.shade50, 15);
// ignore: avoid_redundant_argument_values
final Color darkHighContrastCardColor =
    Colors.purple.shade50.blend(Colors.purple.shade50, 15); //purple


