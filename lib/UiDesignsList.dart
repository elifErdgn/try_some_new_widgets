import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:try_some_new_widgets/pages/LoginScreens/login_ekranlari.dart';
import 'package:try_some_new_widgets/pages/coffeeApp/coffeeAppHomePage.dart';
import 'package:try_some_new_widgets/pages/tek_sayfa_tasarimlarimiz/pinterest_homePage.dart';

import 'pages/onBoardScreens/onboardScreens_guide.dart';
import 'pages/profilepages/profile_pages_list.dart';
import 'Widgets/custom_app_bar.dart';

class UiDesignsListScreen extends StatelessWidget {
  const UiDesignsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context , "UI Design Listesi"),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            // WidgetButton(
            //   title: 'Instagram Klon',
            //   buttonColor: Colors.green,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => HomePageInsta()));
            //   },
            // ),
            // WidgetButton(
            //   title: 'Tasarım Login Ekranları',
            //   buttonColor: Colors.teal.shade900,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => LoginEkranlari()));
            //   },
            // ),
            // WidgetButton(
            //   title: 'Tasarım Profile Ekranları',
            //   buttonColor: Colors.red.shade900,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => ProfilePagesList()));
            //   },
            // ),
            // WidgetButton(
            //   title: 'Pinterest ilham',
            //   buttonColor: Colors.deepPurple.shade400,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => Pinterest_HomePage()));
            //   },
            // ),
            // WidgetButton(
            //   title: 'Coffee App',
            //   buttonColor: Colors.brown,
            //   textColor: Colors.black,
            //   press: () {
            //     Get.to(
            //       () => CoffeAppHomePage(),
            //       transition: Transition.fade,
            //       duration: Duration(milliseconds: 700),
            //     );
            //   },
            // ),

            // WidgetButton(
            //   title: 'ONBOARD',
            //   buttonColor: Colors.deepPurple,
            //   textColor: Colors.black,
            //   press: () {
            //     Get.to(
            //       () => OnBoardGuideList(),
            //       transition: Transition.fade,
            //       duration: Duration(milliseconds: 700),
            //     );
            //   },
            // ),
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
