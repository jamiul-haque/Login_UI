// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:madical_app/pages/color.dart';
import 'package:madical_app/pages/registor.dart';
import 'package:madical_app/pages/widgets/button.dart';
import 'package:madical_app/pages/widgets/header_container.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            HeaderCotainer(text: 'Login'),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _TextImport(hint: 'Email', icon: Icons.email),
                    _TextImport(hint: 'Password', icon: Icons.vpn_key),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Color(0xFF646464),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          onclick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registor()));
                          },
                          btnText: 'LOGIN',
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                            text: "Registor",
                            style: TextStyle(color: deepPurpleColors),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _TextImport({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
