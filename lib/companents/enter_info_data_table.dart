import 'package:flutter/material.dart';
import 'package:wfm_app/companents/todo_tile.dart';

class EnterInfoDataTable extends StatefulWidget {
  const EnterInfoDataTable({super.key});

  @override
  State<EnterInfoDataTable> createState() => _EnterInfoDataTableState();
}

class _EnterInfoDataTableState extends State<EnterInfoDataTable> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: FittedBox(
        child: Container(
            child: Column(
          children: [
            Text("Hücreleri doldur ve iş girişi yap"),
            ToDoTile(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.delete_forever_rounded)),
                SizedBox(
                  width: 100,
                ),
                ElevatedButton(onPressed: () {}, child: Icon(Icons.check)),
              ],
            )
          ],
        )),
      ),
    );
  }
}
