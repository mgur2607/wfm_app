import 'package:flutter/material.dart';

import '../constance/project_colors.dart';

class WorkFlowPageView extends StatefulWidget {
  const WorkFlowPageView({super.key});

  @override
  State<WorkFlowPageView> createState() => _WorkFlowPageViewState();
}

class _WorkFlowPageViewState extends State<WorkFlowPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors().scafoldBackGroundColor,
    );
  }
}
