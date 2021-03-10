import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sinau/constants.dart';
import 'package:sinau/styles.dart';
import 'package:supercharged/supercharged.dart';

class FirstContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: size.width * 0.88,
      height: size.height * 0.25,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //*****************************first row****************************
          Row(
            children: [
              Column(
                children: [
                  Container(
                      width: size.width * 0.6,
                      child: Text(
                          "Declarative interfaces for any Apple Devices",
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).accentColor,
                              fontFamily: "Dm Sans",
                              fontWeight: FontWeight.w400))),
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
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              Container(
                height: size.height * 0.1,
                width: size.height * 0.1,
                decoration: BoxDecoration(
                    color: Styless.mainColor,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Center(
                  child: Transform.rotate(
                    angle: -math.pi / 4,
                    child: Container(
                      color: "#FFFFFF".toColor().withOpacity(0.17),
                      width: size.height * 0.033,
                      height: size.height * 0.033,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),

          //**********************************Second row***********************
          Row(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(size.width * 0.02),
                    decoration: BoxDecoration(
                        color: Theme.of(context).highlightColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Image.asset(
                      "assets/images/award.png",
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Progress",
                        style: TextStyle(
                            color:
                                Theme.of(context).accentColor.withOpacity(0.6),
                            fontFamily: "Dm Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ),
                      Text("50%", style: Theme.of(context).textTheme.headline6)
                    ],
                  )
                ],
              ),
              SizedBox(
                width: size.width * 0.1,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(size.width * 0.02),
                    decoration: BoxDecoration(
                        color: Theme.of(context).highlightColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Image.asset(
                      "assets/images/award.png",
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Current Progress",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .accentColor
                                  .withOpacity(0.6),
                              fontFamily: "Dm Sans",
                              fontWeight: FontWeight.w400,
                              fontSize: 10)),
                      Text("50%", style: Theme.of(context).textTheme.headline6)
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),

          //*************************Third row*************************
          LinearPercentIndicator(
              width: size.width * 0.8,
              animation: true,
              lineHeight: size.height * 0.018,
              percent: 0.2,
              animationDuration: 1000,
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: "7DC579".toColor()),
        ],
      ),
    );
  }
}
