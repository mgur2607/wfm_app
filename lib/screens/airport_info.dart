import 'package:flutter/material.dart';

import '../constance/project_colors.dart';

class AirPortInfoPageView extends StatefulWidget {
  const AirPortInfoPageView({super.key});

  @override
  State<AirPortInfoPageView> createState() => _AirPortInfoPageViewState();
}

class _AirPortInfoPageViewState extends State<AirPortInfoPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors().scafoldBackGroundColor,
    );
  }
}
