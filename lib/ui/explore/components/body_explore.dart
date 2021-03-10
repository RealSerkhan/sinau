import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:sinau/ui/explore/components/category_list.dart';
import 'package:sinau/ui/explore/components/recommended_list.dart';
import 'package:sinau/ui/explore/components/search_field.dart';

class BodyExplore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * 0.08,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
        height: size.height * 0.92,
        width: size.width,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Browse Category",
              style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).accentColor,
                  fontFamily: "Dm Sans",
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CategoryList(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Recommended Courses Category",
              style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).accentColor,
                  fontFamily: "Dm Sans",
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RecommendedListExplore()
          ],
        ),
      ),
    );
  }
}
