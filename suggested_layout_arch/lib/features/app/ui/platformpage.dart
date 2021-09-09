// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/ui/showpopupsheet.dart';
import 'package:suggested_layout_arch/features/app/ui/stateprovider.dart';
import 'package:suggested_layout_arch/widget_extends/extensions.dart';

import '../../../widgets/icons_page.dart';
import '../../../widgets/logo.dart';
import '../../../widgets/material_ios_page.dart';
import '../../../widgets/platform_widget_example.dart';
import '../../tab/ui/tab_impl_page.dart';

class PlatformPage extends StatelessWidget {
  const PlatformPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Flutter Platform Widgets'),
      ),
      body: ListView(
        children: [
          // ignore: avoid_redundant_argument_values
          const FlutterPlatformWidgetsLogo(size: 60),
          const Divider(thickness: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PlatformElevatedButton(
              child: PlatformText('Change Platform'),
              onPressed: () {
                final p = PlatformProvider.of(context)!;

                isMaterial(context)
                    ? p.changeToCupertinoPlatform()
                    : p.changeToMaterialPlatform();
              },
            ),
          ),
          const Divider(thickness: 10),

          // ! PlatformText
          PlatformWidgetExample(
            title: 'PlatformText',
            builder: (_, platform) => PlatformText(
              '${platform.text} Text',
              textAlign: TextAlign.center,
            ),
          ),
          // ! PlatformWidget
          PlatformWidgetExample(
            title: 'PlatformWidget',
            builder: (_, platform) => PlatformWidget(
              material: (_, __) => Text(
                'Showing ${platform.text}',
                textAlign: TextAlign.center,
              ),
              cupertino: (_, __) => Text(
                'Showing ${platform.text}',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // ! PlatformButton
          PlatformWidgetExample(
            title: 'PlatformButton',
            builder: (_, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => log('${platform.text} PlatformButton'),
            ),
          ),
          PlatformWidgetExample(
            title: 'Flat/Filled PlatformButton',
            builder: (_, platform) => PlatformButton(
              materialFlat: (_, __) => MaterialFlatButtonData(),
              cupertinoFilled: (_, __) =>
                  CupertinoFilledButtonData(padding: const EdgeInsets.all(0)),
              child: Text(platform.text),
              // ignore: no-empty-block
              onPressed: () {},
            ),
          ),
          // ! PlatformElevatedButton
          PlatformWidgetExample(
            title: 'PlatformElevatedButton',
            builder: (_, platform) => PlatformElevatedButton(
              onPressed: () => log('${platform.text} PlatformButton'),
              padding: const EdgeInsets.all(8),
              child: Text(platform.text),
            ),
          ),
          PlatformWidgetExample(
            title: 'PlatformElevatedButton Icon',
            builder: (_, platform) => PlatformElevatedButton(
              onPressed: () => log('${platform.text} PlatformButton'),
              padding: const EdgeInsets.all(8),
              material: (_, __) => MaterialElevatedButtonData(
                icon: const Icon(Icons.home),
              ),
              cupertino: (_, __) => CupertinoElevatedButtonData(
                originalStyle: true,
              ),
              child: Text(platform.text),
            ),
          ),
          // ! PlatformTextButton
          PlatformWidgetExample(
            title: 'PlatformTextButton',
            builder: (_, platform) => PlatformTextButton(
              onPressed: () => log('${platform.text} PlatformButton'),
              padding: const EdgeInsets.all(8),
              child: Text(platform.text),
            ),
          ),
          PlatformWidgetExample(
            title: 'PlatformTextButton Icon',
            builder: (_, platform) => PlatformTextButton(
              onPressed: () => log('${platform.text} PlatformButton'),
              padding: const EdgeInsets.all(8),
              material: (_, __) => MaterialTextButtonData(
                icon: const Icon(Icons.home),
              ),
              cupertino: (_, __) => CupertinoTextButtonData(
                originalStyle: true,
              ),
              child: Text(platform.text),
            ),
          ),
          // ! PlatformSwitch
          PlatformWidgetExample(
            title: 'PlatformSwitch',
            builder: (_, __) => StateProvider<bool>(
              initialValue: false,
              builder: (_, value, setValue) => PlatformSwitch(
                onChanged: setValue,
                value: value,
              ).center,
            ),
          ),
          // ! PlatformSlider
          PlatformWidgetExample(
            title: 'PlatformSlider',
            builder: (_, __) => StateProvider<double>(
              initialValue: 0.5,
              builder: (_, value, setValue) => PlatformSlider(
                onChanged: setValue,
                value: value,
              ),
            ),
          ),
          // ! PlatformIconButton
          PlatformWidgetExample(
            title: 'PlatformIconButton',
            builder: (context, __) => PlatformIconButton(
              icon: Icon(context.platformIcons.folder),
              // ignore: no-empty-block
              onPressed: () {},
            ),
          ),
          // ! PlatformTextField
          PlatformWidgetExample(
            title: 'PlatformTextField',
            builder: (_, platform) =>
                PlatformTextField(hintText: platform.text),
          ),
          PlatformWidgetExample(
            title: 'PlatformTextField multiline',
            builder: (_, platform) => SizedBox(
              height: 100,
              child: PlatformTextField(
                hintText: platform.text,
                expands: true,
                maxLines: null,
              ),
            ),
          ),
          // ! PlatformTextFormField
          PlatformWidgetExample(
            title: 'PlatformTextFormField',
            builder: (_, platform) => PlatformTextFormField(
              hintText: 'hint',
              validator: (value) =>
                  (value?.length ?? 0) < 3 ? 'Not enough' : null,
              autovalidateMode: AutovalidateMode.always,
            ),
          ),
          // ! PlatformCircularProgressIndicator
          // _PlatformWidgetExample(
          //   title: 'PlatformCircularProgressIndicator',
          //   builder: (_) => PlatformCircularProgressIndicator().center,
          // ),
          // ! PlatformWidgetBuilder
          PlatformWidgetExample(
            title: 'PlatformWidgetBuilder',
            builder: (_, platform) => PlatformWidgetBuilder(
              cupertino: (_, child, __) => GestureDetector(
                child: child,
                onTap: () => log('Cupertino PlatformWidgetBuilder'),
              ),
              material: (_, child, __) => InkWell(
                child: child,
                onTap: () => log('Material PlatformWidgetBuilder'),
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: PlatformText('Tap me (${platform.text})').center,
              ),
            ),
          ),
          // ! platformThemeData
          PlatformWidgetExample(
            title: 'platformThemeData',
            builder: (context, platform) => Text(
              platform.text,
              textAlign: TextAlign.center,
              style: platformThemeData(
                context,
                material: (data) => data.textTheme.headline5,
                cupertino: (data) => data.textTheme.navTitleTextStyle,
              ),
            ),
          ),
          // ! Dialogs
          PlatformWidgetExample(
            title: 'showPlatformDialog',
            builder: (context, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => showExampleDialog(context, platform.text),
            ),
          ),
          // ! Bottomsheet
          PlatformWidgetExample(
            title: 'showPlatformModalSheet',
            builder: (context, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => showPopupSheet(context, platform.text),
            ),
          ),
          // ! Tab pages
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PlatformButton(
              child: const Text('Show Tabbed Pages'),
              onPressed: () => Navigator.of(context).push<dynamic>(
                platformPageRoute<dynamic>(
                  context: context,
                  builder: (context) => const TabImplementationPage(),
                ),
              ),
            ),
          ),
          // ! Icons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PlatformButton(
              child: const Text('Show Platform Icons'),
              onPressed: () => Navigator.of(context).push<dynamic>(
                platformPageRoute<dynamic>(
                  context: context,
                  builder: (context) => const IconsPage(),
                ),
              ),
            ),
          ),
          // ! Material on iOS
          if (isCupertino(context))
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PlatformButton(
                child: const Text('Show Material on iOS'),
                onPressed: () => Navigator.of(context).push<dynamic>(
                  platformPageRoute<dynamic>(
                    context: context,
                    builder: (context) => const IosMaterialPage(),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

