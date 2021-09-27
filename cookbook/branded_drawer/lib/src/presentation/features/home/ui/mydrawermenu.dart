// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawerMenu extends StatefulWidget {
  const MyDrawerMenu({Key? key}) : super(key: key);

  @override
  State<MyDrawerMenu> createState() => _MyDrawerMenuState();
}

class _MyDrawerMenuState extends State<MyDrawerMenu> {
  late Image personAccountImage;
  late Image accountHeaderImage;

  @override
  void initState() {
    super.initState();

    personAccountImage = Image.asset("assets/images/aleydon.jpg");
    accountHeaderImage = Image.asset("assets/images/fundo.jpg");
    
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(personAccountImage.image, context);
    precacheImage(accountHeaderImage.image, context);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Menu')),
      drawer: Drawer(
        child: ListView(padding: const EdgeInsets.all(0.0), children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('Someone Someone'),
            accountEmail: const Text('someone.someone@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: personAccountImage.image,
            ),
            otherAccountsPictures: const <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white60,
                child: Text('A'),
              ),
              CircleAvatar(
                child: Text('R'),
              ),
            ],
            onDetailsPressed: () {},
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: accountHeaderImage.image,
                    fit: BoxFit.cover)),
          ),
          ListTile(
            title: const Text('Profile'),
            leading: const Icon(Icons.person),
            onLongPress: () {},
          ),
          const Divider(),
          const ListTile(
            title: Text('New Group'),
            leading: Icon(Icons.group_add),
          ),
          ListTile(
            title: const Text('New Chat'),
            leading: const Icon(Icons.chat),
            onLongPress: () {},
          ),
          ListTile(
            title: const Text('Calls'),
            leading: const Icon(Icons.call),
            onLongPress: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
            onLongPress: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Support'),
            leading: const Icon(Icons.report_problem),
            onLongPress: () {},
          ),
          ListTile(
              title: const Text('Close'),
              leading: const Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              }),
        ]),
      ),
    );
  }
}
