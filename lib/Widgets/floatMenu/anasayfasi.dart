import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:try_some_new_widgets/Widgets/floatMenu/bubble.dart';

class FloatAnaSayfasi extends StatelessWidget {
  const FloatAnaSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            WidgetButton(
              title: "Bubble Widget paketi", 
              buttonColor: Colors.deepOrange.shade300,
              textColor: Colors.green.shade900,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BubbleMenu()));
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
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 8,
              ),
            ],
            border: Border.all(color: Colors.green.shade900, width: 3),
            color: buttonColor,

          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.rubikMicrobe(
                      color: textColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
