import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String title;
  final String username;
  const Dashboard({super.key, required this.title, required this.username});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(child: Text(widget.username)),
    );
  }
}
