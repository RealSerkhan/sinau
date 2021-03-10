import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:sinau/ui/explore/components/body_explore.dart';

import 'file:///C:/Users/reals/AndroidStudioProjects/sinau/lib/ui/explore/components/explore_app_bar.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          color: Theme.of(context).primaryColor,
        ),
        ExploreAppBar(),
        BodyExplore()
      ],
    );
  }
}
