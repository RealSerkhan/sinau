import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinau/constants.dart';
import 'package:supercharged/supercharged.dart';

class RecommendedListExplore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.5,
      width: size.width * 0.88,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.01),
            child: Container(
              padding: EdgeInsets.all(8),
              width: size.width * 0.88,
              height: size.height * 0.14,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // First column i mean it is CustomBox
                  Container(
                    height: size.height * 0.11,
                    width: size.height * 0.11,
                    decoration: BoxDecoration(
                        color: Theme.of(context).secondaryHeaderColor,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: Container(
                        width: size.height * 0.04,
                        height: size.height * 0.04,
                        decoration: BoxDecoration(
                            color: "#FFFFFF".toColor().withOpacity(0.17),
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  //second column these is Informations
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.55,
                        child: Text(
                          "Declarative interfaces for any Apple Devices",
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).accentColor,
                              fontFamily: "Dm Sans",
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        "IDR 850.000",
                        style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).accentColor,
                            fontFamily: "Dm Sans",
                            fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/star.png"),
                          Text("4.5"),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.01,
                                right: size.width * 0.01),
                            child: Icon(
                              Icons.circle,
                              size: 4,
                              color: "#91919F".toColor(),
                            ),
                          ),
                          Text(
                            "By Sarah William",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontFamily: "Dm Sans",
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.01,
                                right: size.width * 0.01),
                            child: Icon(
                              Icons.circle,
                              size: 4,
                              color: "#91919F".toColor(),
                            ),
                          ),
                          Text(
                            "All Level",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontFamily: "Dm Sans",
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
