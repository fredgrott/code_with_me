// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:login_cool/circles.dart';

class BackgroundOne extends StatelessWidget {
  const BackgroundOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset('assets/collaboration.png', width: MediaQuery.of(context).size.width/1.5,),
        ),
        Expanded(
          child: Container(),
        ),
        Stack(
          alignment: Alignment.topLeft,
          children: const <Widget>[
            
            CirclePink(),
            CircleYellow(),
          ],


        ),

        
      ],
    );
  }
}
