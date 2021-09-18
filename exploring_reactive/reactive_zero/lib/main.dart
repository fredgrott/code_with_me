import 'package:flutter/material.dart';
import 'package:reactive_zero/src/app.dart';
import 'package:reactive_zero/src/infrastructure/app_vars.dart';




// future required here for the await
Future<void> main() async {
  
  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsViewModel.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(const MyApp());
}
