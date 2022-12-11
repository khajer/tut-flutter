import 'package:flutter/material.dart';

import 'login_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.all(40.0),
      child: TextButton(
          onPressed: () => {gotoNext(context)},
          // onPressed: testClick,
          child: const Text("GO to next page")),
    ));
  }

  // void testClick() {
  //   debugPrint("test");
  // }

  void gotoNext(BuildContext context) {
    debugPrint("go to next page");
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => const LoginPage(title: "title")));

    Navigator.pushNamed(context, "/login");
  }
}
