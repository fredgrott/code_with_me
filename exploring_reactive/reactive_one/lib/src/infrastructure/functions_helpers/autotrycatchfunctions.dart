// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the guard library originally created by
// Andrei Lenitsky under MIT License 2020.
//
// Modified to null-safety and improved to include ability to
// use void functions. Modifications under BSD clause 2 license
// and copyright 2021 by Fredrick Allan Grott

import 'dart:developer';

typedef AVoidFunction = void Function();

class ExceptionWithMessage implements Exception {
 late final String? _message;
 ExceptionWithMessage([this._message]);

  @override
  String toString() {
  // ignore: unnecessary_null_comparison
  if (_message == null) return "Exception";

    return "Exception: $_message";
 
  }
}

/// Sandboxes a non returning function. Used for non-pure functions
/// that may trigger effects beyond the core of app such as systems,
/// outside services, etc.
///
/// guardVoided(() => theFunction)
///
///
/// @author Fredrick Allan Grott
void guardVoided<T>(AVoidFunction callback) {
  try {
    callback();
  } on ExceptionWithMessage catch (e) {
    log('$e.runtimeType.toString() $e.message');
  }
}

/// Sand boxing a returning function that offers a default value if function
/// miss-behaves.
///
///  guardDefaultValue(()=> theFunction, defaultValue)
///
/// @author Fredrick Allan Grott
T? guardDefaultValue<T>(T Function() callback, [T? defaultValue]) {
  late T result;

  try {
    result = callback();
  } on ExceptionWithMessage catch (e) {
    log('$e.runtimeType.toString() $e.message');
  }

  return result ?? defaultValue;
}

/// Call as
///
///  asyncGuardDefaultValue(()async {
///      await Future.error(null);
/// }, defaultValue)
///
/// @author Fredrick Allan Grott
Future<T> asyncGuardDefaultValue<T>(
  Future<T> Function() callback, [
  T? defaultValue,
]) async {
  late T result;

  try {
    result = callback() as T;
  } on ExceptionWithMessage catch (e) {
    log('$e.runtimeType.toString() $e.message');
  }

  return result ?? defaultValue as T;
}
