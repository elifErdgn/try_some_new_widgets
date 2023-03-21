import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  Offset _offset = Offset(200, 250);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                  left: _offset.dx,
                  top: _offset.dy,
                  child: LongPressDraggable(
                    feedback: Image.asset(
                      "",
                      height: 200,
                      color: Colors.deepOrange,
                      colorBlendMode: BlendMode.colorBurn,
                    ),
                    child: Image.asset(
                      "",
                      height: 200,
                    ),
                    onDragEnd: (details) {
                      setState(() {
                        double adjustment = MediaQuery.of(context).size.height -
                            constraints.maxHeight;
                      });
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget tabloyapisi() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Table(
          border: TableBorder.all(color: Colors.red),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
           const TableRow(
              decoration: BoxDecoration(color: Colors.redAccent),
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Title 1"),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Title 1"),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Title 1"),
                  ),
                ),
              ],
            ),
            ...List.generate(
              20,
              (index) => const TableRow(
                decoration: BoxDecoration(color: Colors.redAccent),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("Title 1"),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("Title 1"),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("Title 1"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
