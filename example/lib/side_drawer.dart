import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Bluejay',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet),
            title: const Text('Financial Example'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/financial_example');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.radio_button_checked),
            title: const Text('Buttons'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/buttons');
            },
          ),
          ListTile(
            leading: const Icon(Icons.keyboard),
            title: const Text('Inputs'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/inputs');
            },
          ),
          ListTile(
            leading: const Icon(Icons.data_array),
            title: const Text('Data Display'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/display');
            },
          ),
        ],
      ),
    );
  }
}
