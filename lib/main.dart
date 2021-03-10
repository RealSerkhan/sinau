import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sinau/styles.dart';
import 'package:sinau/ui/start_page.dart';

import 'models/dark_theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, value, Widget child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Styless.themeData(themeChangeProvider.darkTheme, context),
            darkTheme: Styless.themeData(true, context),
            home: StartPage(),
          );
        },
      ),
    );
  }
}
