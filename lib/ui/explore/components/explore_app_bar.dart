import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:supercharged/supercharged.dart';

class ExploreAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * 0.02,
      child: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: "#FCFCFF".toColor(),
                ),
                SizedBox(
                  width: size.width * 0.05,
                ),
                Text(
                  "Explore",
                  style: TextStyle(
                      fontSize: 16,
                      color: "FCFCFF".toColor(),
                      fontFamily: "Dm Sans",
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Image.asset("assets/images/cart.png")
          ],
        ),
      ),
    );
  }
}
