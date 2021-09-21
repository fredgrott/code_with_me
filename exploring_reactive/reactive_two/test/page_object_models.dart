// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:page_object/page_object.dart';
import 'package:reactive_two/src/app.dart';
import 'package:reactive_two/src/presentation/features/home/ui/sample_item_details_view.dart';

import 'package:reactive_two/src/presentation/features/home/ui/sample_item_list_view.dart';
import 'package:reactive_two/src/presentation/features/settings/ui/settings_view.dart';

// Implementing the Page Object Model pattern of testing
// by defining finders for the App Root and Screens(Features)
//
// You implement the pattern by creating a Root App Widget finder.
// Each Screen(Feature) PageObject created then uses that finder
// via the find descendant method to find the screens(features).
// Makes for more readable tests when you have several
// screens(features).
//
//  Not only for unit testing as you can also use it in
//  instrumented testing.

class MyAppListViewPageObject extends PageObject {
  MyAppListViewPageObject() : super(find.byType(MyApp));

  MyListViewPageObject get screen => MyListViewPageObject(this);
}

class MyListViewPageObject extends PageObject {
  MyListViewPageObject(Finder finder)
      : super(find.descendant(
          of: finder,
          matching: find.byType(SampleItemListView),
        ));

  // we can avoid having to always manually define by resorting to
  // known fields of the Widget when applicable.
  Finder get title => find.descendant(
        of: this,
        matching: find.byKey(const Key("SampleItemListView.title")),
      );
}

class MyAppSettingsViewPageObject extends PageObject {
  MyAppSettingsViewPageObject() : super(find.byType(MyApp));

  MySettingsViewPageObject get screen => MySettingsViewPageObject(this);
}

class MySettingsViewPageObject extends PageObject {
  MySettingsViewPageObject(Finder finder)
      : super(find.descendant(of: finder, matching: find.byType(SettingsView)));

  Finder get title => find.descendant(
        of: this,
        matching: find.byKey(const Key("SettingsView.title")),
      );
}

class MyAppListDetailViewPageObject extends PageObject {
  MyAppListDetailViewPageObject() : super(find.byType(MyApp));

  MyListDetailViewPageObject get screen => MyListDetailViewPageObject(this);
}

class MyListDetailViewPageObject extends PageObject {
  MyListDetailViewPageObject(Finder finder)
      : super(find.descendant(
            of: finder, matching: find.byType(SampleItemDetailsView),));

  Finder get title => find.descendant(
      of: this, matching: find.byKey(const Key("SampleItemDetailsView.title")),);
}



class HasText extends CustomMatcher {
  HasText(String featureDescription, String featureName, Object? valueOrMatcher)
      : super(featureDescription, featureName, valueOrMatcher);

  @override
  String? featureValueOf(dynamic actual) {
    if (actual is Finder) {
      final element = actual.evaluate().single;
      final widget = element.widget;
      if (widget is Text) {
        return widget.data;
      } else {
        throw Exception("HasText matcher can't be applied to $element");
      }
    } else {
      throw Exception('HasText matcher can only be applied to a Finder object');
    }
  }
}
