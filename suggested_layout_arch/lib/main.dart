import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'extensions.dart';
import 'icons_page.dart';
import 'logo.dart';
import 'material_ios_page.dart';
import 'platform_widget_example.dart';
import 'tab_impl_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final materialTheme = ThemeData(
      cupertinoOverrideTheme: const CupertinoThemeData(
        primaryColor: Color(0xff127EFB),
      ),
      primarySwatch: Colors.green,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(16.0)),
          foregroundColor: MaterialStateProperty.all(const Color(0xFF3DDC84)),
        ),
      ),
    );

    return Theme(
      data: materialTheme,
      child: PlatformProvider(
        settings: PlatformSettingsData(iosUsesMaterialWidgets: true),
        builder: (context) => PlatformApp(
          localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
            DefaultMaterialLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
          ],
          title: 'Flutter Platform Widgets',
          home: const PlatformPage(),
          material: (_, __) => MaterialAppData(
            theme: materialTheme,
          ),
          cupertino: (_, __) => CupertinoAppData(
            theme: const CupertinoThemeData(
              primaryColor: Color(0xff127EFB),
            ),
          ),
        ),
      ),
    );
  }
}

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
                },),
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
              onPressed: () => _showExampleDialog(context, platform.text),
            ),
          ),
          // ! Bottomsheet
          PlatformWidgetExample(
            title: 'showPlatformModalSheet',
            builder: (context, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => _showPopupSheet(context, platform.text),
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

dynamic _showExampleDialog(BuildContext context, String text) {
  showPlatformDialog<dynamic>(
    context: context,
    builder: (_) => PlatformAlertDialog(
      title: const Text('Alert'),
      content: Text('$text content'),
      actions: <Widget>[
        PlatformDialogAction(
          material: (_, __) => MaterialDialogActionData(),
          cupertino: (_, __) => CupertinoDialogActionData(),
          child: PlatformText('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
        PlatformDialogAction(
          child: PlatformText('OK'),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    ),
  );
}

dynamic _showPopupSheet(BuildContext context, String text) {
  showPlatformModalSheet<dynamic>(
    context: context,
    builder: (_) => PlatformWidget(
      material: (_, __) => _androidPopupContent(context, text),
      cupertino: (_, __) => _cupertinoSheetContent(context, text),
    ),
  );
}

Widget _androidPopupContent(BuildContext context, String text) {
  return Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: PlatformText('Option 1 $text'),
          ),
          onTap: () => Navigator.pop(context),
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: PlatformText('Option 2 $text'),
          ),
          onTap: () => Navigator.pop(context),
        ),
      ],
    ),
  );
}

Widget _cupertinoSheetContent(BuildContext context, String text) {
  return CupertinoActionSheet(
    title: Text('$text Favorite Dessert'),
    message:
        const Text('Please select the best dessert from the options below.'),
    actions: <Widget>[
      CupertinoActionSheetAction(
        child: const Text('Profiteroles'),
        onPressed: () {
          Navigator.pop(context, 'Profiteroles');
        },
      ),
      CupertinoActionSheetAction(
        child: const Text('Cannolis'),
        onPressed: () {
          Navigator.pop(context, 'Cannolis');
        },
      ),
      CupertinoActionSheetAction(
        child: const Text('Trifle'),
        onPressed: () {
          Navigator.pop(context, 'Trifle');
        },
      ),
    ],
    cancelButton: CupertinoActionSheetAction(
      isDefaultAction: true,
      onPressed: () {
        Navigator.pop(context, 'Cancel');
      },
      child: const Text('Cancel'),
    ),
  );
}

class StateProvider<T> extends StatefulWidget {
  final T initialValue;
  final Widget Function(
    BuildContext context,
    T value,
    void Function(T) setValue,
  ) builder;

  const StateProvider({
    Key? key,
    required this.builder,
    required this.initialValue,
  }) : super(key: key);

  @override
  _StateProviderState<T> createState() => _StateProviderState<T>();
}

class _StateProviderState<T> extends State<StateProvider<T>> {
  late T state;

  @override
  void initState() {
    super.initState();

    state = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      state,
      (T newValue) => setState(() => state = newValue),
    );
  }
}
