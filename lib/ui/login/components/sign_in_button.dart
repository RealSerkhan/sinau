import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:sinau/styles.dart';

import 'file:///C:/Users/reals/AndroidStudioProjects/sinau/lib/ui/bottomnav/bottomnav.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavPage(),
              ));
        },
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.only(
                left: double.minPositive,
                right: double.minPositive,
                top: size.height * 0.02,
                bottom: size.height * 0.02)),
            backgroundColor: MaterialStateProperty.all(Styless.mainColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))))),
        child: Center(child: Text("Sign In")));
  }
}
