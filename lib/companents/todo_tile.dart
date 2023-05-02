import 'package:flutter/material.dart';

import '../constance/empty_data_table_colum_list.dart';
import '../constance/project_colors.dart';
import '../constance/project_ints.dart';
import '../constance/project_paddings.dart';

class ToDoTile extends StatefulWidget {
  final String flyingTime;
  final String flyingCode;
  final int rowCount;
  const ToDoTile(
      {super.key,
      this.flyingCode = "Uçak Kodu",
      this.flyingTime = "Uçak Saati",
      this.rowCount = 3});

  @override
  State<ToDoTile> createState() => _ToDoTileState();
}

class _ToDoTileState extends State<ToDoTile> {
  String _flyingTime = "";
  String _flyingCode = "";
  int _rowCounter = 3;

  @override
  void initState() {
    _flyingCode = widget.flyingCode;
    _flyingTime = widget.flyingTime;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ProjectInts().containerWidth,
      decoration: BoxDecoration(
          color: ProjectColors().textColorWhite,
          borderRadius:
              BorderRadius.all(Radius.circular(ProjectInts().containerRadius))),
      margin: ProjectPaddings().tilePadding,
      child: Column(children: [
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("$_flyingCode", style: Theme.of(context).textTheme.titleSmall),
            SizedBox(
              width: 140,
            ),
            Text(
              "$_flyingTime",
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        FittedBox(
          child: EnterInfoAirportDataTable(),
        )
      ]),
    );
  }
}

class EnterInfoAirportDataTable extends StatefulWidget {
  const EnterInfoAirportDataTable({
    super.key,
  });

  @override
  State<EnterInfoAirportDataTable> createState() =>
      _EnterInfoAirportDataTableState();
}

class _EnterInfoAirportDataTableState extends State<EnterInfoAirportDataTable> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
        columns: [
          DataColumn(
              label: Text(
            EmptyDataTableColums().columns[0],
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          DataColumn(
              label: Text(
            EmptyDataTableColums().columns[1],
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          DataColumn(
              label: Text(
            EmptyDataTableColums().columns[2],
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          DataColumn(
              label: Text(
            EmptyDataTableColums().columns[3],
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          DataColumn(
              label: Text(
            EmptyDataTableColums().columns[4],
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          DataColumn(
              label: Text(
            EmptyDataTableColums().columns[5],
            style: Theme.of(context).textTheme.bodyLarge,
          )),
        ],
        rows: List<DataRow>.generate(5, (index) {
          return DataRow(
            cells: [
              DataCell(
                  showEditIcon: true,
                  Text(
                    "",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )),
              DataCell(
                  showEditIcon: true,
                  Text("", style: Theme.of(context).textTheme.bodyLarge)),
              DataCell(
                  showEditIcon: true,
                  Text("", style: Theme.of(context).textTheme.bodyLarge)),
              DataCell(
                  showEditIcon: true,
                  Text("", style: Theme.of(context).textTheme.bodyLarge)),
              DataCell(
                  showEditIcon: true,
                  Text("", style: Theme.of(context).textTheme.bodyLarge)),
              DataCell(
                  showEditIcon: true,
                  Text('', style: Theme.of(context).textTheme.bodyLarge)),
            ],
          );
        }));
  }
}
