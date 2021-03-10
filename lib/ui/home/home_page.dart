import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:sinau/ui/home/components/body_home.dart';
import 'package:sinau/ui/home/components/home_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //color of  page**************
        Container(
          height: size.height,
          width: size.width,
          color: Theme.of(context).primaryColor,
        ),

        // container like bottomsheet*************
        Positioned(
          top: size.height * 0.27,
          child: Container(
            height: size.height * 0.65,
            width: size.width,
            decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15))),
          ),
        ),
        HomeAppBar(),
        BodyHome(),
      ],
    );
  }
}
