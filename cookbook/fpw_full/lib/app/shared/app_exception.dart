// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Note to see what properties I am accessing see:
// https://api.flutter.dev/flutter/dart-core/Exception-class.html
// https://api.flutter.dev/flutter/dart-core/Error-class.html

class AppException implements Exception {
  @override
  // ignore: no_runtimetype_tostring
  String toString() => '$runtimeType Exception';
}

// borrowed from portal, example of error class
// so that we can do specialized throws.
//
// Type is the class where we want to throw
class AppError<T extends Type> extends Error {
  AppError._(this._object);

  // ignore: unused_field
  late final Object _object;

  @override
  // ignore: no_runtimetype_tostring
  String toString() => '$runtimeType and $stackTrace errors';
}
