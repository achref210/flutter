import 'dart:js';

import 'package:flutter/material.dart';
import 'package:neatness_project/constants.dart';
import 'package:neatness_project/screens/profile_screen.dart';
import 'package:neatness_project/screens/geoLocalisation.dart';
import 'package:neatness_project/screens/sign_in.dart';
import 'package:neatness_project/screens/sign_up.dart';
import 'package:neatness_project/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: primaryColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
            )),
      ),
      initialRoute: SignUp.id,
      routes: {

        GeoLocalisation.id: (context) => GeoLocalisation(),
        ProfileScreen.id: (context) => ProfileScreen(),
        SignIn.id: (context) => SignIn(),
        SignUp.id: (context) => SignUp()
      },
    );
  }
}

//ThemeData.from(colorScheme: ColorScheme.light()).copyWith(
//       elevatedButtonTheme: ElevatedButtonThemeData(style: raisedButtonStyle),
//     ),
