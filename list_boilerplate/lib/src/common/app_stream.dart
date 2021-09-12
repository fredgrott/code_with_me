// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/widgets.dart';


/// Mixin which enables multiple stream subscriptions
/// and exposes overrides for [onData], [onError], and [onDone] callbacks.
mixin StreamListenerMixin {
  final _subscriptions = <StreamSubscription<dynamic>>[];

  /// Invokes [Stream.listen] on the provided [Stream]
  /// and propagates emitted data to the
  /// [onData], [onError], and [onDone] methods.
  ///
  /// Note: All [StreamListenerMixin] instances which
  /// invoke [subscribe] must also invoke [cancel] in order to
  /// cancel all pending `StreamSubscriptions`.
  void subscribe(Stream<dynamic> stream) {
    _subscriptions.add(stream.listen(
      (dynamic data) => onData(stream, data),
      onDone: () => onDone(stream),
      onError: (dynamic error,StackTrace stackTrace) => onError(stream, error, stackTrace),
      cancelOnError: cancelOnError(stream),
    ));
  }

  /// Invoked for each data event from the `stream`.
  // ignore: no-empty-block
  void onData(Stream<dynamic> stream, dynamic data) {}

  /// Invoked on stream errors with the error object and possibly a stack trace.
  // ignore: no-empty-block
  void onError(Stream<dynamic> stream, dynamic error, StackTrace stackTrace) {}

  /// Invoked if the stream closes.
  // ignore: no-empty-block
  void onDone(Stream<dynamic> stream) {}

  /// Flag to determine whether or not to cancel the
  /// subscription if an error is emitted.
  /// Defaults to false.
  bool cancelOnError(Stream<dynamic> stream) => false;

  /// Cancels all existing `StreamSubscriptions`.
  /// If [subscribe] is invoked, then [cancel] should
  /// also be invoked when subscriptions are no longer needed.
  void cancel() {
    for (final s in _subscriptions) {
      s.cancel();
    }
    _subscriptions.clear();
  }
}


/// Signature for the `onData` callback.
typedef StreamOnDataListener<T> = void Function(T data);

/// Signature for the `onError` callback.
typedef StreamOnErrorListener = void Function(
  dynamic error,
  StackTrace stackTrace,
);

/// Signature for the `onDone` callback.
typedef StreamOnDoneListener = void Function();

/// {@template stream_listener}
/// A `Widget` which manages a `Subscription` to a [Stream]
/// and exposes callbacks: [onData], [onError], and [onDone].
///
/// ```dart
/// StreamListener<int>(
///   stream: Stream.fromIterable([0, 1, 2, 3]), // Stream being subscribed to
///   onData: (data) {
///     // React to the emitted data
///   },
///   onError: (error) {
///     // Optionally handle errors in the Stream
///   },
///   onDone: () {
///     // Optionally react to when the Stream is closed
///   },
///   cancelOnError: true, // Defaults to false
///   child: Container(),
/// )
/// ```
/// {@endtemplate}
class StreamListener<T> extends StatefulWidget {
  /// {@macro stream_listener}
  const StreamListener({
    Key? key,
    required this.stream,
    required this.onData,
    required this.child,
    this.onError,
    this.onDone,
    this.cancelOnError = false,
  }) : super(key: key);

  /// The [Stream] which will be subscribed to.
  final Stream<T> stream;

  /// On each data event from the [stream],
  /// the subscriber's [onData] handler is called.
  final StreamOnDataListener<T> onData;

  /// The widget which will be rendered
  /// as a direct descendant of the [StreamListener].
  final Widget child;

  /// On errors from this stream, the [onError] handler is called with the
  /// error object and possibly a stack trace.
  ///
  /// The [onError] callback must be of type `void onError(error)` or
  /// `void onError(error, StackTrace stackTrace)`. If [onError] accepts
  /// two arguments it is called with the error object and the stack trace
  /// (which could be `null` if this stream itself received an error without
  /// stack trace).
  /// Otherwise it is called with just the error object.
  /// If [onError] is omitted,
  /// any errors on this stream are considered unhandled,
  /// and will be passed to the current [Zone]'s error handler.
  /// By default unhandled async errors are treated
  /// as if they were uncaught top-level errors.
  final StreamOnErrorListener? onError;

  /// If this stream closes and sends a done event, the [onDone] handler is
  /// called. If [onDone] is `null`, nothing happens.
  final StreamOnDoneListener? onDone;

  /// If [cancelOnError] is true, the subscription is automatically canceled
  /// when the first error event is delivered. The default is `false`.
  final bool cancelOnError;

  @override
  _StreamListenerState<dynamic> createState() => _StreamListenerState<T>();
}

class _StreamListenerState<T> extends State<StreamListener<T>> {
  late final StreamSubscription<T> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = widget.stream.listen(
      widget.onData,
      onError: widget.onError,
      onDone: widget.onDone,
      cancelOnError: widget.cancelOnError,
    );
  }

  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

