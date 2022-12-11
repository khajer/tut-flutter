import 'package:flutter/material.dart';
import 'main_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: null, body: MainPage(title: "test"));
  }
}
