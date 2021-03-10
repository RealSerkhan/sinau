import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:sinau/ui/home/home_page.dart';
import 'package:supercharged/supercharged.dart';

import 'file:///C:/Users/reals/AndroidStudioProjects/sinau/lib/ui/explore/explore_page.dart';

class BottomNavPage extends StatelessWidget {
  PageController _controller = PageController();
  StreamController _streamController = StreamController<int>.broadcast();
  List<String> images = ["assets/images/home.png", "assets/images/search.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: customBottomNavBar(context),
      body: SafeArea(
        child: PageView.custom(
            onPageChanged: (value) {
              _streamController.sink.add(value);
            },
            controller: _controller,
            childrenDelegate:
                SliverChildListDelegate([HomePage(), ExplorePage()])),
      ),
    );
  }

  Widget customBottomNavBar(context) {
    return Container(
      height: 52,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(25)),
          color: Theme.of(context).hoverColor,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                color: Theme.of(context).focusColor,
                blurRadius: 15)
          ]),
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: images.mapIndexed((currentValue, index) {
          return GestureDetector(
            onTap: () {
              _controller.animateToPage(index,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut);

              _streamController.sink.add(index);
            },
            child: StreamBuilder<int>(
              initialData: 0,
              stream: _streamController.stream,
              builder: (context, snapshot) {
                debugPrint(snapshot.data.toString());
                if (snapshot.hasData) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          // color: snapshot.data == index
                          //     ? "#418DD8".toColor().withOpacity(0.1)
                          //     : Colors.transparent,
                          ),
                      child: index == 3
                          ? Stack(
                              children: [
                                Container(
                                  width: 55,
                                  child: Image.asset(
                                    currentValue.toString(),
                                    color: Colors.grey,
                                  ),
                                ),
                                Positioned(
                                  top: 2,
                                  left: 30,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle),
                                  ),
                                )
                              ],
                            )
                          : Container(
                              width: 55,
                              child: Image.asset(
                                currentValue.toString(),
                                color: snapshot.data == index
                                    ? "FF8181".toColor()
                                    : Theme.of(context).accentColor,
                              ),
                            ),
                    ),
                  );
                }
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
