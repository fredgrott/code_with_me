// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// CounterStoreMixin View Model
/// This is what lifting up state does in that we put our data model in the view model
/// along with the behavior of the object. If we want the full OOP semantic detail we 
/// would separate out counter to it's own distinct domain entity separate from the 
/// view-model.
/// 
/// @author Fredrick Allan Grott
mixin CounterStoreMixin {
  static const int _counter = 0;

  int myCounter = _counter;

  int increaseCounter() {
    return myCounter++;
  }

}