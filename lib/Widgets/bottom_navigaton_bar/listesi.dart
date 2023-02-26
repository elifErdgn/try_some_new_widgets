import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import 'circle_bottom_nav_bar.dart';

class Nav_Bar_List extends StatelessWidget {
  const Nav_Bar_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                  ),
                  child: GFButton(
                    color: Colors.deepOrange.shade200,
                    text: "Circle Nav BAR",
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    elevation: 2,
                    size: 50,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CircleNavBar(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                  ),
                  child: GFButton(
                    color: Colors.teal.shade400,
                    text: "",
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    elevation: 2,
                    size: 50,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CircleNavBar(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                  ),
                  child: GFButton(
                    color: Colors.indigoAccent.shade200,
                    text: "",
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    elevation: 2,
                    size: 50,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CircleNavBar(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
