import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:try_some_new_widgets/pages/profilepages/profile_page_2.dart';

import 'kapakFoto_sosyalMeda_page.dart';

class ProfilePagesList extends StatelessWidget {
  const ProfilePagesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Column(
        children: [
          SizedBox(height: 50),
          WidgetButton(
            title: "sosyal M. ve kapak fotoğrafı",
            buttonColor: Colors.black,
            press: () {
              Get.to(
                () => KapakFoto_SosyalMedya_Page(),
                transition: Transition.rightToLeft,
                duration: Duration(milliseconds: 700),
              );
            },
          ), WidgetButton(
            title: "2. Profile Ekranı",
            buttonColor: Colors.red,
            press: () {
              Get.to(
                () => ProfilePage2(),
                transition: Transition.rightToLeft,
                duration: Duration(milliseconds: 700),
              );
            },
          ),
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
