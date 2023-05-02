import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wfm_app/screens/splash.dart';

import 'companents/bottom_navigation_bar.dart';
import 'constance/project_colors.dart';
import 'constance/project_ints.dart';
import 'constance/project_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ProjectStrings().appName,
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: ProjectColors().appBarColor,
              unselectedItemColor: ProjectColors().unChosenIconColor,
              backgroundColor: ProjectColors().scafoldBackGroundColor),
          tabBarTheme: TabBarTheme(
            unselectedLabelStyle:
                TextStyle(color: ProjectColors().textColorGrey),
            indicator: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.white,
                        width: ProjectInts().appBarIndicatorSize))),
            unselectedLabelColor: ProjectColors().textColorGrey,
            labelColor: ProjectColors().textColorWhite,
          ),
          textTheme: TextTheme(
              titleLarge: TextStyle(
                  color: ProjectColors().textColorWhite,
                  fontSize: ProjectInts().bodyLargeFontSize),
              bodyLarge: TextStyle(
                  color: ProjectColors().textColorBlack, fontSize: 30)),
          appBarTheme: AppBarTheme(
            centerTitle: false,
            backgroundColor: ProjectColors().appBarColor,
          )),
      home: SplashPageView(),
    );
  }
}
