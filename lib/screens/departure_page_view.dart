import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constance/project_colors.dart';

class DeparturePageView extends StatefulWidget {
  const DeparturePageView({super.key});

  @override
  State<DeparturePageView> createState() => _DeparturePageViewState();
}

class _DeparturePageViewState extends State<DeparturePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors().scafoldBackGroundColor,
      body: Container(color: Colors.blue),
    );
  }
}
