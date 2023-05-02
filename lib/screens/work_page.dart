import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constance/project_ints.dart';
import '../constance/project_strings.dart';
import 'arrival_page_view.dart';
import 'departure_page_view.dart';
import 'otopark_page_view.dart';

class WorkPageView extends StatefulWidget {
  const WorkPageView({super.key});

  @override
  State<WorkPageView> createState() => _WorkPageViewState();
}

class _WorkPageViewState extends State<WorkPageView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController =
        TabController(length: ProjectInts().tabBarLenght, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              actions: [
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell))
              ],
              title: Text(
                ProjectStrings().appName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              pinned: true,
              floating: true,
              bottom: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: ProjectStrings().dailyArrivalPlan),
                  Tab(text: ProjectStrings().dailyDeparturePlan),
                  Tab(
                    text: ProjectStrings().otoparkManagment,
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [ArrivalPageView(), DeparturePageView(), OtoparkPageView()],
        ),
      ),
    );
  }
}
