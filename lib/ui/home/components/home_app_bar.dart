import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:supercharged/supercharged.dart';

class HomeAppBar extends StatelessWidget {
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
                Container(
                  width: size.width * 0.12,
                  height: size.width * 0.12,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/manprofil.jpg"))),
                ),
                SizedBox(
                  width: size.width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: TextStyle(
                          fontSize: 10,
                          color: "FCFCFF".toColor(),
                          fontFamily: "Dm Sans",
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Poetri Lazuardi",
                      style: TextStyle(
                          fontSize: 14,
                          color: "FCFCFF".toColor(),
                          fontFamily: "Dm Sans",
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ],
            ),
            Image.asset("assets/images/bell.png")
          ],
        ),
      ),
    );
  }
}
