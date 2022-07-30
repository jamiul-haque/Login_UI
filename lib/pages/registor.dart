import 'package:flutter/material.dart';
import 'package:madical_app/pages/color.dart';
import 'package:madical_app/pages/widgets/button.dart';
import 'package:madical_app/pages/widgets/header_container.dart';

class Registor extends StatefulWidget {
  @override
  State<Registor> createState() => _RegistorState();
}

class _RegistorState extends State<Registor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            HeaderCotainer(text: 'Register'),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    _TextImport(hint: 'Full Name', icon: Icons.person),
                    _TextImport(hint: 'Phon Number', icon: Icons.call),
                    _TextImport(hint: 'Email', icon: Icons.email),
                    _TextImport(hint: 'Password', icon: Icons.vpn_key),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          btnText: 'REGISTER',
                          onclick: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Alraady a account?",
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                            text: "Login",
                            style: TextStyle(color: deepPurpleColors),
                          )
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
