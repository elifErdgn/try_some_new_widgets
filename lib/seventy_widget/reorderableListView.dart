import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget3 extends StatefulWidget {
  const Widget3({Key? key}) : super(key: key);

  @override
  State<Widget3> createState() => _Widget3State();
}

class _Widget3State extends State<Widget3> {
  final List<int> items = List<int>.generate(30, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: List.generate(
        items.length,
        (index) => ListTile(
          key: Key('$index'),
          tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,
          title: Text("ıtem ${items[index]}"),
          trailing: Icon(Icons.drag_handle_sharp),
        ),
      ),
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      },
    );
  }

  Widget contextMenu() {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: CupertinoContextMenu(
          child: Image.network(""),
          actions: [
            CupertinoContextMenuAction(
              child: Text("seçenek 1"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoContextMenuAction(
              child: Text("seçenek 2"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }
}
