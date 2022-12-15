import 'package:finalp/pages/Main_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        )),
      );
  Widget buildHeader(BuildContext context) => Container(
        color: Colors.blueAccent,
        padding: EdgeInsets.only(
            top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
        child: Column(
          children: [
            CircleAvatar(
              radius: 52,
              backgroundImage: AssetImage("assets/images/IMG_0409.jpeg"),
            ),
            SizedBox(height: 12),
            Text("Abdullah",
                style: TextStyle(fontSize: 28, color: Colors.white)),
            Text("al3bdf@gmail.com",
                style: TextStyle(fontSize: 16, color: Colors.white))
          ],
        ),
      );
  Widget buildMenuItems(BuildContext context) => Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MainPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Favourites'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.workspaces_outlined),
            title: const Text('Workflow'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.update),
            title: const Text('Updates'),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black45,
          ),
          ListTile(
            leading: const Icon(Icons.account_tree_outlined),
            title: const Text('Plugins'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text('Notifications'),
            onTap: () {},
          ),
        ],
      );
}
