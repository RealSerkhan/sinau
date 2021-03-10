import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:sinau/styles.dart';
import 'package:supercharged/supercharged.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> languages = [
      "Technology",
      "Business",
      "Finance",
      "Python",
      "Programming",
      "Swift",
      "React Native"
    ];
    return Container(
        width: size.width,
        height: size.height * 0.1,
        child: Wrap(
          spacing: size.width * 0.02,
          runSpacing: size.width * 0.02,
          children: languages
              .mapIndexed((currentValue, index) => Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Styless.mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      languages[index],
                      style: TextStyle(
                          fontSize: 12,
                          color: "FCFCFF".toColor(),
                          fontFamily: "Dm Sans",
                          fontWeight: FontWeight.w400),
                    ),
                  ))
              .toList(),
        ));
  }
}
