import 'dart:async';

import 'package:flutter/material.dart';

import '../companents/bottom_navigation_bar.dart';
import '../constance/project_colors.dart';

class SplashPageView extends StatefulWidget {
  const SplashPageView({super.key});

  @override
  State<SplashPageView> createState() => _SplashPageViewState();
}

class _SplashPageViewState extends State<SplashPageView> {
  @override
  void initState() {
    Timer(
        Duration(milliseconds: 3200),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MyStatefulWidget(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ProjectColors().appBarColor,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/paper_plane_gif.gif", height: 500),
        ]),
      ),
    );
  }
}
