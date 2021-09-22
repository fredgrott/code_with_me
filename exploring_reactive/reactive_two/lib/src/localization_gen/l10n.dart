// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `reactive_two`
  String get appTitle {
    return Intl.message(
      'reactive_two',
      name: 'appTitle',
      desc: 'The title of the application',
      args: [],
    );
  }

  /// `Sample Items`
  String get appListTitle {
    return Intl.message(
      'Sample Items',
      name: 'appListTitle',
      desc: 'The Title of List View Screen',
      args: [],
    );
  }

  /// `Item Details`
  String get appListDetailTitle {
    return Intl.message(
      'Item Details',
      name: 'appListDetailTitle',
      desc: 'item details title',
      args: [],
    );
  }

  /// `More Information Here`
  String get appListDetailBody {
    return Intl.message(
      'More Information Here',
      name: 'appListDetailBody',
      desc: 'item detail body',
      args: [],
    );
  }

  /// `Settings`
  String get appSettingsTitle {
    return Intl.message(
      'Settings',
      name: 'appSettingsTitle',
      desc: 'settings title',
      args: [],
    );
  }

  /// `System Theme`
  String get settingsSystemTheme {
    return Intl.message(
      'System Theme',
      name: 'settingsSystemTheme',
      desc: 'system theme title',
      args: [],
    );
  }

  /// `Light Theme`
  String get settingsLightTheme {
    return Intl.message(
      'Light Theme',
      name: 'settingsLightTheme',
      desc: 'light theme title',
      args: [],
    );
  }

  /// `Dark Theme`
  String get settingsDarkTheme {
    return Intl.message(
      'Dark Theme',
      name: 'settingsDarkTheme',
      desc: 'dark theme title',
      args: [],
    );
  }

  /// `SampleItem`
  String get listTileTitle {
    return Intl.message(
      'SampleItem',
      name: 'listTileTitle',
      desc: 'sample item title list tile',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
