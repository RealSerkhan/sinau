import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:supercharged/supercharged.dart';

class LogoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: size.height * 0.2,
        left: size.width * 0.1,
        right: size.width * 0.1,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(size.width * 0.03),
              height: size.width * 0.15,
              width: size.width * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.all(size.width * 0.017),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: "#7C7AFC".toColor()),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(size.width * 0.015),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: "#FF8181".toColor(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Image.asset("assets/images/sinau.png"),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Learn from anything and anywhere",
              style: TextStyle(
                  fontFamily: "Dm Sans",
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            )
          ],
        ));
  }
}
