import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// Page to show what material widgets look like on cupertino
class IosMaterialPage extends StatelessWidget {
  const IosMaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('iOS with Material'),
        trailingActions: [
          // This is possible because of PlatformProvider iosUsesMaterialWidgets setting
          // ignore: no-empty-block
          IconButton(icon: const Icon(Icons.ac_unit), onPressed: () {}),
        ],
        cupertino: (_, __) => CupertinoNavigationBarData(
            // If this is enabled and set to true then the IconButton above will complain of no parent Material widget
            //noMaterialParent: true,
            ),
      ),
      body: ListView(
        children: [
          IconButton(
            icon: const Icon(Icons.book),
            // ignore: no-empty-block
            onPressed: () {},
          ),
          const Divider(
            thickness: 6,
          ),
          ListTile(
            title: const Text('List Tile title'),
            subtitle: const Text('sub title'),
            // ignore: no-empty-block
            onTap: () {},
            trailing: const Icon(Icons.place),
          ),
        ],
      ),
    );
  }
}
