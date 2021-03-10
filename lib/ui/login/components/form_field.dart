import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:sinau/ui/login/components/password_field.dart';
import 'package:sinau/ui/login/components/sign_in_button.dart';
import 'package:sinau/ui/login/components/sign_with_google.dart';
import 'package:supercharged/supercharged.dart';

import 'mail_text_field.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * 0.5,
      child: Container(
        height: size.height * 0.5,
        width: size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MailTextField(),
            PasswordField(),
            SignInButton(),
            SignWithGoogle(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Column(
              children: [
                Text(
                  "Feel free tro use this UI Kit ",
                  style: TextStyle(
                      fontSize: 12,
                      color: "#91919F".toColor(),
                      fontFamily: "Dm Sans",
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "© Harum Shidiqi",
                  style: TextStyle(
                      fontSize: 12,
                      color: "#91919F".toColor(),
                      fontFamily: "Dm Sans",
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
