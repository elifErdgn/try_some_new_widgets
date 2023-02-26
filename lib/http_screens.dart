import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:try_some_new_widgets/pages/JsonVeriDenemesi/homeForJson.dart';
import 'package:try_some_new_widgets/pages/Login&Register/node_js_loginregister.dart';
import 'package:try_some_new_widgets/pages/ResponsiveAndApiDeneme/screens/homeScreen.dart';
import 'package:try_some_new_widgets/pages/crud_operations/crud_operations_home.dart';
import 'package:try_some_new_widgets/pages/http_methods_CodeX/homeScreenCodeX.dart';
import 'package:try_some_new_widgets/pages/postman_kullanmak/postman_deneme_1.dart';
import 'Widgets/custom_app_bar.dart';
import 'pages/jsondersgibiicerik/json_ders_gibi_icerik.dart';
import 'riverpod-eticaret/e-ticaret_home.dart';

class Http_Screens extends StatelessWidget {
  const Http_Screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Http Projeleri ekranı"),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            // WidgetButton(
            //   title: 'Responsive ve Api Tasarımı - fade animasyonu' ,
            //   buttonColor: Colors.pink,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => UiDesign2()));
            //   },
            // ),
            // WidgetButton(
            //   title: 'Http + GET, DELETE, PATCH, PUT Butonları',
            //   buttonColor: Colors.blue.shade900,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => ForJsonHomePage()));
            //   },
            // ),
            // WidgetButton(
            //   title: 'Mockapi ile kendi json CRUD',
            //   buttonColor: Colors.pink.shade900,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => CRUSoperationsPage()));
            //   },
            // ),
            // WidgetButton(
            //   title: 'CodeX HTTP Methods (LED)',
            //   buttonColor: Colors.orange.shade900,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => HomeScreenCodeX()));
            //   },
            // ),
            // WidgetButton(
            //   title: 'Jsonın ne olduğunu öğreniyoruz',
            //   buttonColor: Colors.green.shade900,
            //   textColor: Colors.black,
            //   press: () {
            //     Get.to(() => JsonDersGibiIcerik(),
            //         transition: Transition.rightToLeft,
            //         duration: Duration(
            //           milliseconds: 700,
            //         ));
            //   },
            // ),
            // WidgetButton(
            //   title: 'Postman Kullanmayı Deniyoruz',
            //   buttonColor: Colors.yellow.shade800,
            //   textColor: Colors.black,
            //   press: () {
            //     Get.to(() => PostmanKullanmak1(),
            //         transition: Transition.rightToLeft,
            //         duration: Duration(
            //           milliseconds: 700,
            //         ));
            //   },
            // ),
            WidgetButton(
              title: 'Login&Register Node JS',
              buttonColor: Colors.teal,
              textColor: Colors.black,
              press: () {
                Get.to(() => NodeJsIleLoginRegister(),
                    transition: Transition.rightToLeft,
                    duration: Duration(
                      milliseconds: 700,
                    ));
              },
            ),
            // WidgetButton(
            //   title: 'Riverpod ile e-ticaret projesi yapıyoruz',
            //   buttonColor: Colors.purple,
            //   textColor: Colors.black,
            //   press: () {
            //     Get.to(() => E_Ticaret_Home(),
            //         transition: Transition.rightToLeft,
            //         duration: Duration(
            //           milliseconds: 700,
            //         ));
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
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
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
