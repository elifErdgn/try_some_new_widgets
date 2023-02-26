import 'package:flutter/material.dart';

import 'package:try_some_new_widgets/Widgets/DatePicker/DatePicker.dart';
import 'package:try_some_new_widgets/Widgets/Search/serachScreen.dart';
import 'package:try_some_new_widgets/Widgets/Stepper/stepperScreen.dart';
import 'package:try_some_new_widgets/Widgets/TimePickerAndShowClock/clocktest.dart';
import 'package:try_some_new_widgets/Widgets/adaptive/AdaptiveScreen.dart';
import 'package:try_some_new_widgets/Widgets/clipPath/clip_path.dart';
import 'package:try_some_new_widgets/Widgets/uiDesign1/uidenem1_home.dart';

import 'Widgets/SidebarMenu/sidebarDenemeScreen.dart';
import 'Widgets/bottom_navigaton_bar/listesi.dart';
import 'Widgets/floatMenu/anasayfasi.dart';

class WidgetListScreen extends StatelessWidget {
  const WidgetListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              WidgetButton(
                title: 'Tarih Seçme Widget',
                buttonColor: Colors.blue.shade800,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DatePicker()));
                },
              ),
              WidgetButton(
                title: 'Saat Seçme Widget',
                buttonColor: Colors.orange,
                textColor: Colors.black,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClockTest()));
                },
              ),
              WidgetButton(
                title: 'Arama Butonu Widget',
                buttonColor: Colors.blue.shade800,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
              ),
              WidgetButton(
                title: 'Stepper Widget',
                buttonColor: Colors.orange,
                textColor: Colors.black,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StepperScreen()));
                },
              ),
              WidgetButton(
                title: 'Drawer Widget',
                buttonColor: Colors.blue.shade800,
                textColor: Colors.white,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DrawerList()));
                },
              ),
              WidgetButton(
                title: 'Float Action Widgets',
                buttonColor: Colors.orange,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FloatAnaSayfasi()));
                },
              ),
              // WidgetButton(
              //   title: 'Apaptive',
              //   buttonColor: Colors.blue.shade800,
              //   press: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => AdaptiveScreen()));
              //   },
              // ),

              WidgetButton(
                title: 'Clip Path',
                buttonColor: Colors.orange,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClipPathYapisi()));
                },
              ),
              WidgetButton(
                title: 'Kendi Tasarladığım Tasarımlar',
                buttonColor: Colors.blue.shade800,
                textColor: Colors.white,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UiDesign1()));
                },
              ),
              WidgetButton(
                title: ' Nav Bar Tasarımlar ',
                buttonColor: Colors.orange,
                textColor: Colors.white,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Nav_Bar_List()));
                },
              ),
              WidgetButton(
                title: ' 70 Widget deneme ',
                buttonColor: Colors.orange,
                textColor: Colors.white,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Nav_Bar_List()));
                },
              ),
            ],
          ),
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
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 4),
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                spreadRadius: 4,
              ),
            ],
            border: Border.all(color: Colors.indigo, width: 2),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
