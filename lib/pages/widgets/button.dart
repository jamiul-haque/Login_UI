import 'package:flutter/material.dart';
import 'package:madical_app/pages/color.dart';
import 'package:madical_app/pages/registor.dart';

class ButtonWidget extends StatelessWidget {
  var btnText = "";
  var onclick;
  ButtonWidget({required this.btnText, this.onclick});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [deepPurpleColors, deepPurpleLightColors],
              end: Alignment.centerLeft,
              begin: Alignment.centerRight),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          btnText,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
