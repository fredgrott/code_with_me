import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'extensions.dart';
import 'platform_widget_example.dart';
import 'tab_pages/basictabbedpage.dart';
import 'tab_pages/dynamictabbedpage.dart';
import 'tab_pages/originaltabbedpage.dart';
import 'tab_pages/slivertabbedpage.dart';

class TabImplementationPage extends StatelessWidget {
  const TabImplementationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Platform Tab Scaffold'),
      ),
      body: ListView(
        children: [
          PlatformWidgetExample(
            title: 'Basic Tabbed Page',
            builder: (_, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => _openPage(
                context,
                (_) => BasicTabbedPage(platform: platform),
                platform,
              ),
            ),
          ),
          PlatformWidgetExample(
            title: 'Sliver Tabbed Page',
            builder: (_, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => _openPage(
                context,
                (_) => SliverTabbedPage(platform: platform),
                platform,
              ),
            ),
          ),
          PlatformWidgetExample(
            title: 'Original Tabbed Page',
            builder: (_, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => _openPage(
                context,
                (_) => OriginalTabbedPage(platform: platform),
                platform,
              ),
            ),
          ),
          PlatformWidgetExample(
            title: 'Dynamic Tabbed Page',
            builder: (_, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => _openPage(
                context,
                (_) => DynamicTabbedPage(platform: platform),
                platform,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

dynamic _openPage(
  BuildContext context,
  WidgetBuilder pageToDisplayBuilder,
  TargetPlatform platform,
) {
  Navigator.push<dynamic>(
    context,
    platformPageRoute<dynamic>(
      context: context,
      builder: (context) => pageToDisplayBuilder.asPlatform(platform),
    ),
  );
}
