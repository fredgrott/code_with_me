// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

class Init {
  Init._();
  static final instance = Init._();

  Future<dynamic> initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    //
    // with DIs, the initialization of the DI goes here instead of this await Future
    await Future<dynamic>.delayed(const Duration(seconds: 3));
  }
}
