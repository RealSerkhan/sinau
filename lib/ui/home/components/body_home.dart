import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';

import 'container_list.dart';
import 'first_container.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: size.height * 0.12,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FirstContainer(),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "Recommendation",
                style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).accentColor,
                    fontFamily: "Dm Sans",
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              ContainerList()
            ],
          ),
        ));
  }
}
