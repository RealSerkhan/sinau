import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';

class SignWithGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.only(
                left: double.minPositive,
                right: double.minPositive,
                top: size.height * 0.02,
                bottom: size.height * 0.02)),
            backgroundColor: MaterialStateProperty.all(
                Theme.of(context).secondaryHeaderColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))))),
        child: Center(child: Text("Sign In with Google")));
  }
}
