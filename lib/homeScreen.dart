import 'package:flutter/material.dart';
import 'package:try_some_new_widgets/UiDesignsList.dart';
import 'package:try_some_new_widgets/widgetsList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 45),
          Center(
            child: Text(""),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetButton(
                title: "Widget Örnek Sayfaları",
                buttonColor: Colors.purpleAccent.shade200,
                press: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => WidgetListScreen(),
                  //   ),
                  // );
                },
              ),
              WidgetButton(
                title: "Ui Sayfa ve Proje Denemeleri",
                buttonColor: Colors.blueGrey,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UiDesignsListScreen(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class WidgetButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final Color? textColor;
  final GestureTapCallback press;

  const WidgetButton({
    Key? key,
    required this.title,
    required this.buttonColor,
    required this.press,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Center(
        child: Container(
          height: 170,
          width: (MediaQuery.of(context).size.width - 40) /2,
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: buttonColor, width: 3),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              title,
              textAlign: TextAlign.center,
               style: TextStyle(
                  color: buttonColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            )),
          ),
        ),
      ),
    );
  }
}
