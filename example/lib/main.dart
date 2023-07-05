import 'package:bluejay/bluejay.dart';
import 'package:bluejay_example/pages/buttons_page.dart';
import 'package:bluejay_example/pages/financial_example.dart';
import 'package:bluejay_example/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Bluejay.lightTheme(),
      darkTheme: Bluejay.darkTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/financial_example': (context) => const FinancialExample(),
        '/buttons': (context) => const ButtonsPage(),
      },
    );
  }
}
