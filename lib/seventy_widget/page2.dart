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

  Widget aletButtonuu() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Close"),
                ),
              ],
              title: Text("Fluter Mapp"),
              contentPadding: EdgeInsets.all(20),
              content: Text("Aler dialog içeriği bulunan kısım"),
            ),
          );
        },
        child: Text("Dialogu aç"),
      ),
    );
  }

  Widget dragTaqrget() {
    Color caughtColor = Colors.red;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Draggable(
            data: Colors.orangeAccent,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.orangeAccent,
              child: Center(
                child: Text("Box"),
              ),
            ),
            onDraggableCanceled: (velocirt, offset) {},
            feedback: Container(
              width: 150,
              height: 150,
              color: Colors.orangeAccent.withOpacity(0.5),
              child: const Center(
                child: Text(
                  "Box...",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          DragTarget(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                width: 200,
                height: 200,
                color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                child: Center(
                  child: Text("Drag here"),
                ),
              );
            },
            onAccept: (Color color) {
              caughtColor = color;
            },
          ),
        ],
      ),
    );
  }

  Widget slider() {
    bool _bool = true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: Text("Switch"),
        ),
        AnimatedCrossFade(
            firstChild: Image.asset(
              "",
              width: double.infinity,
            ),
            secondChild: Image.asset(
              "",
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 1))
      ],
    );
  }
}

class silinebilenListWidget extends StatefulWidget {
  const silinebilenListWidget({Key? key}) : super(key: key);

  @override
  State<silinebilenListWidget> createState() => _silinebilenListWidgetState();
}

class _silinebilenListWidgetState extends State<silinebilenListWidget> {
  List<int> items = List<int>.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          background: Container(
            child: Icon(Icons.delete),
            color: Colors.red,
          ),
          key: ValueKey<int>(items[index]),
          child: ListTile(
            title: Text("Item ${items[index]}"),
          ),
          onDismissed: (DismissDirection direction) {
            setState(() {
              items.removeAt(index);
            });
          },
        );
      },
    );
  }
}

class dragANDscrollable extends StatefulWidget {
  const dragANDscrollable({Key? key}) : super(key: key);

  @override
  State<dragANDscrollable> createState() => _dragANDscrollableState();
}

class _dragANDscrollableState extends State<dragANDscrollable> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.orangeAccent,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("Item $index"),
              );
            },
            itemCount: 25,
            controller: scrollController,
          ),
        );
      },
    );
  }
}
