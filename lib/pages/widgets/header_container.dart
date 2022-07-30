import 'package:flutter/material.dart';
import 'package:madical_app/pages/color.dart';

class HeaderCotainer extends StatelessWidget {
  HeaderCotainer({required this.text});
  var text = 'Login';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [deepPurpleColors, deepPurpleLightColors],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 20,
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Center(
            child: Image.asset('lib/icons/logo.png'),
          ),
        ],
      ),
    );
  }
}
