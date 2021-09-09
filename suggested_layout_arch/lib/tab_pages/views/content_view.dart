import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../extensions.dart';
import 'sub_page.dart';

class ContentView extends StatefulWidget {
  final int index;
  final TargetPlatform platform;

  const ContentView(this.index, this.platform, {Key? key}) : super(key: key);

  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  late int counter = 0;

  @override
  Widget build(BuildContext context) {
    log('ContentView::build');

    return Column(
      children: [
        PlatformButton(
          child: const Text('Back'),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
        ),
        Text('Viewing Tab ${widget.index}'),
        PlatformButton(
          child: const Text('Push to subpage'),
          onPressed: () => Navigator.push<dynamic>(
            context,
            platformPageRoute<dynamic>(
              context: context,
              // ignore: unnecessary_parenthesis
              builder: (context) => ((BuildContext context) {
                if (widget.index == 0) {

                  return SubPage('Flag', 1, widget.platform);
                }

                return SubPage('Book', 1, widget.platform);
              }).asPlatform(widget.platform),
            ),
          ),
        ),
        PlatformButton(
          child: const Text('Increment'),
          onPressed: () => setState(() => counter++),
        ),
        Text('Counter: $counter'),
      ],
    );
  }
}
