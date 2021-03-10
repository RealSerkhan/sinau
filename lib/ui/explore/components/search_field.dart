import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:supercharged/supercharged.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.02),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          // boxShadow: [
          //   BoxShadow(
          //       blurRadius: 7,
          //       offset: Offset(0, 3),
          //       color: "#AFBAD1".toColor().withOpacity(0.3))
          // ]
        ),
        child: TextFormField(
          style: TextStyle(),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                top: size.height * 0.02,
                bottom: size.height * 0.02,
                left: 15,
                right: 15),
            filled: true,
            fillColor: Theme.of(context).cardColor,
            suffixIcon: Image.asset(
              "assets/images/search.png",
              color: Theme.of(context).accentColor,
            ),
            hintText: "Form placeHolder",
            hintStyle: TextStyle(
                fontSize: 14,
                color: Theme.of(context).hintColor,
                fontFamily: "Dm Sans",
                fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: "#418DD8".toColor(), width: 1.8),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
