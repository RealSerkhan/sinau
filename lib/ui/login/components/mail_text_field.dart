import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

import '../../../constants.dart';

class MailTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                blurRadius: 7,
                offset: Offset(0, 3),
                color: "#AFBAD1".toColor().withOpacity(0.3))
          ]),
      child: TextFormField(
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
              top: size.height * 0.02,
              bottom: size.height * 0.02,
              left: 15,
              right: 15),
          prefixIcon: Icon(
            Icons.mail_outline_outlined,
            color: Theme.of(context).hintColor,
            size: 32,
          ),
          hintText: "Email",
          hintStyle: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
              fontFamily: "Dm Sans",
              fontWeight: FontWeight.w400),
          fillColor: Theme.of(context).backgroundColor,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: "#418DD8".toColor(), width: 1.8),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
