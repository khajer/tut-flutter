import 'package:flutter/material.dart';
import 'package:projecttwo/dashboard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constraint.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({super.key, required this.title});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _userController = TextEditingController();
  final _passwdcontroller = TextEditingController();
  var pressLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.all(60.0),
                color: Colors.blue[600],
                alignment: Alignment.center,
                child: createColumnForm())));
  }

  void logined() {
    debugPrint("username : ${_userController.text}");
    debugPrint("password : ${_passwdcontroller.text}");

    if (_userController.text == "admin" && _passwdcontroller.text == "1234") {
      debugPrint("login completed");
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Dashboard(
                    title: "title",
                    username: _userController.text,
                  )));
    } else {
      setState(() {
        pressLogin = true;
      });
    }
  }

  Column createColumnForm() {
    return Column(
      children: [
        if (pressLogin) const Text(lbLoginFails),
        const Text(txtUser),
        TextField(controller: _userController, decoration: stTxtField),
        const Text(txtPassword),
        TextField(
            controller: _passwdcontroller,
            obscureText: true,
            decoration: stTxtField,
            style: const TextStyle(fontSize: 18)),
        IconButton(
            icon: const FaIcon(FontAwesomeIcons.user),
            onPressed: () {
              logined();
            })
        // TextButton(
        //   style: TextButton.styleFrom(
        //     foregroundColor: Colors.white,
        //     padding: const EdgeInsets.all(16.0),
        //     textStyle: const TextStyle(fontSize: 20),
        //   ),
        //   onPressed: () {
        //     logined();
        //   },
        //   child: const Text(lbBtnLogin),
        // ),
      ],
    );
  }
}
