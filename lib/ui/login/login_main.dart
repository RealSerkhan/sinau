import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sinau/constants.dart';
import 'package:sinau/models/dark_theme_provider.dart';
import 'package:sinau/ui/login/components/form_field.dart';
import 'package:sinau/ui/login/components/logo_field.dart';
import 'package:supercharged/supercharged.dart';

class LoginPage extends StatelessWidget {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //to give color of background
            SizedBox(
              height: size.height,
              width: size.width,
              child: Container(
                color: "#6360FF".toColor(),
              ),
            ),
            LogoContainer(),
            FormContainer()
          ],
        ),
      ),
    );
  }
}
