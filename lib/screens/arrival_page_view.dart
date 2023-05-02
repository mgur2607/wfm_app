import 'package:flutter/material.dart';

import '../companents/enter_info_data_table.dart';
import '../constance/project_colors.dart';

class ArrivalPageView extends StatefulWidget {
  const ArrivalPageView({super.key});

  @override
  State<ArrivalPageView> createState() => _ArrivalPageViewState();
}

class _ArrivalPageViewState extends State<ArrivalPageView> {
  void enterInfoDataTable() {
    showDialog(
        context: context,
        builder: (context) {
          return EnterInfoDataTable();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: ProjectColors().appBarColor,
          child: Icon(Icons.add),
          onPressed: enterInfoDataTable),
      backgroundColor: ProjectColors().scafoldBackGroundColor,
      body: ListView(children: []),
    );
  }
}
