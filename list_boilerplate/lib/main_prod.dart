// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



// Note you can access static via ClassName().staticMember









import 'package:list_boilerplate/main.dart';
import 'package:list_boilerplate/src/common/constants.dart';

void main() {

  Constants().setEnvironment(Environment.prod);
  mainDelegate();
}
