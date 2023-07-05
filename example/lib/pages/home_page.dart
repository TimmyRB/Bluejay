import 'package:bluejay/bluejay.dart';
import 'package:bluejay_example/side_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  int value = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Bluejay'),
            pinned: true,
          ),
        ],
      ),
    );
  }
}
