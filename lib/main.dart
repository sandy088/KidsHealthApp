import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/pages/30Days/fit_challange_page.dart';
import 'package:flutter_catalog/pages/BMI_screen/bmi_screen.dart';

import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/comming_soon.dart';
import 'package:flutter_catalog/pages/healthy_diet_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/yoga_pages/yoga_pose.dart';

import 'package:flutter_catalog/utils/myRoutes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 1;

    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.system,

      theme: themes.lightTheme(context),
      darkTheme: themes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: myRoutes.Loginpage,
      routes: {
        myRoutes.loginRoute: (context) => Homepage(),
        myRoutes.homeRoute: (context) => Homepage(),
        myRoutes.Loginpage: (context) => LoginPage(),
        myRoutes.cart_page: (context) => cartPage(),
        myRoutes.healthy_diet: (context) => HealthyDietPage(),
        myRoutes.Yoga: (context) => Yoga(),
        myRoutes.fitChallenge: (context) => fitChallenge(),
        myRoutes.bmiCalc: (context) => BMI_Screen(),
        myRoutes.commingSoon: (context) => CommingSoon(),
      },
    );
  }
}
