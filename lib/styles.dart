import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class Styless {
  static Color mainColor = "#6360FF".toColor();
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
        fontFamily: "Dm Sans",
        accentColor: isDarkTheme ? "#FCFCFF".toColor() : "#161719".toColor(),
        primarySwatch: Colors.red,
        primaryColor: isDarkTheme ? "#292B2D".toColor() : "#6360FF".toColor(),
        secondaryHeaderColor: "#FF8181".toColor(),
        backgroundColor: isDarkTheme ? Colors.black : "#F1F1FA".toColor(),
        indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
        buttonColor: isDarkTheme ? Color(0xff3B3B3B) : Color(0xffF1F5FB),
        hintColor: isDarkTheme ? "#FCFCFF".toColor() : "#91919F".toColor(),
        highlightColor: isDarkTheme ? "292B2D".toColor() : "F1F1FA".toColor(),
        hoverColor: isDarkTheme ? "#292B2D".toColor() : Colors.white,
        focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
        disabledColor: Colors.grey,
        cardColor: isDarkTheme ? "#212325".toColor() : Colors.white,
        canvasColor: isDarkTheme ? Colors.transparent : Colors.grey,
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme:
                isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 12,
              color: Theme.of(context).accentColor,
              fontFamily: "Dm Sans",
              fontWeight: FontWeight.w700),
          headline2: TextStyle(
              fontSize: 12,
              color: Theme.of(context).accentColor,
              fontFamily: "Dm Sans",
              fontWeight: FontWeight.w400),
          subtitle1: TextStyle(
              color: Theme.of(context).accentColor.withOpacity(0.6),
              fontFamily: "Dm Sans",
              fontWeight: FontWeight.w400,
              fontSize: 10),
          headline6: TextStyle(
              color: Theme.of(context).accentColor,
              fontFamily: "Dm Sans",
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ));
  }
}
