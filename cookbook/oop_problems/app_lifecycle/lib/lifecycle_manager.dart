// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:developer';

import 'package:flutter/material.dart';

class LifeCycleManager extends StatefulWidget {
  const LifeCycleManager({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManager>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  //Note: A standard practice in Onion Layered or even Clean Arch Service
  //      implementations is to use this to wrap the app and add stop and
  //      start service hooks:
  //
  //       List<StoppableServices> services = [
  //           locator<LocationService>(),
  //       ]
  //
  //       then
  //
  //        @override
  //void didChangeAppLifecycleState(AppLifecycleState state) {
  //  services.forEach((service) {
  //    if (state == AppLifecycleState.resumed) {
  //      service.start();
  //    } else {
  //      service.stop();
  //    }
  //  });
  //  }
  //
  // And then we need the abstract class
  //
  // abstract class StoppableService {
  //  bool _serviceStopped = false;
  //  bool get serviceStopped => _serviceStopped;
  //  @mustCallSuper
  //  void stop() {
  //    _serviceStopped = true;
  //  }
  //  @mustCallSuper
  // void start() {
 //     _serviceStopped = false;
 //  }
//  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    //
    log('AppLifecycleState: $state');
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }
}
