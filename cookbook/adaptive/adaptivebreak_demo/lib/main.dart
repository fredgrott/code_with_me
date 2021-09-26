import 'package:adaptivebreak_demo/src/infrastructure/app_vars.dart';
import 'package:adaptivebreak_demo/src/myapp.dart';
import 'package:flutter/material.dart';




// ignore: avoid_void_async
void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(const MyApp());
}
