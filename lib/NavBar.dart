import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  //const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('sample.test'),
            accountEmail: Text('sample@gmail.com'),
            decoration: BoxDecoration(color: Colors.amber[600]),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
            onTap: () => print('fav'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () => print('noti'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_outlined),
            title: Text('Exit'),
            onTap: () => print('exit'),
          ),
        ],
      ),
    );
  }
}
