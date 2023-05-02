import 'package:flutter/material.dart';

import '../companents/todo_tile.dart';
import '../constance/project_colors.dart';

class OtoparkPageView extends StatefulWidget {
  const OtoparkPageView({super.key});

  @override
  State<OtoparkPageView> createState() => _OtoparkPageView();
}

class _OtoparkPageView extends State<OtoparkPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ProjectColors().scafoldBackGroundColor,
        body: ListView());
  }
}
