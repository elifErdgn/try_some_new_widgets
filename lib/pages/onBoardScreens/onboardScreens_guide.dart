import 'package:flutter/material.dart';

import 'onboard1.dart';

class OnBoardGuideList extends StatelessWidget {
  const OnBoardGuideList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            WidgetButton(
              title: "??",
              buttonColor: Colors.pink.shade300,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OnBoardingScreen1()));
              },
            ),
          ],
        ),
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
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: buttonColor, width: 2.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                color: buttonColor,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
