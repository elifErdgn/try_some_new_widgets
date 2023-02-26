import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:try_some_new_widgets/pages/LoginScreens/animasyonlu_loginScreen.dart';
import 'package:try_some_new_widgets/pages/LoginScreens/formRegisterScreen.dart';
import 'package:try_some_new_widgets/pages/LoginScreens/glass_login_page.dart';
import 'package:try_some_new_widgets/pages/LoginScreens/karmasikLoginUi.dart';
import 'package:try_some_new_widgets/pages/LoginScreens/minimalLoginUi-1.dart';
import 'package:try_some_new_widgets/pages/LoginScreens/mostminimalistLoginPage.dart';
import 'package:try_some_new_widgets/pages/LoginScreens/ortalama_tasarim.dart';

import 'formgorunumluloginpage.dart';

class LoginEkranlari extends StatelessWidget {
  const LoginEkranlari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GFButton(
                fullWidthButton: true,
                text: "Minimal Login Uİ Sayfası",
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                elevation: 2,
                size: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MinimalLoginUi(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              GFButton(
                fullWidthButton: true,
                text: "Karmaşık Login Uİ Sayfası",
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                elevation: 2,
                size: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KarmasikLoginUi(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              GFButton(
                fullWidthButton: true,
                text: "Animasyonlu Login Uİ Sayfası",
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                elevation: 2,
                size: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimasyonluLoginScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              GFButton(
                fullWidthButton: true,
                text: "En basit görünümlü login",
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                elevation: 2,
                size: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TheMostMinimalistLoginPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              GFButton(
                fullWidthButton: true,
                text: "Form İçeren Kayıt Ekranı",
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                elevation: 2,
                size: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormRegisterScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              GFButton(
                fullWidthButton: true,
                text: "Sarı Renkli Tasarım",
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                elevation: 2,
                size: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Tasarim2(),
                    ),
                  );
                },
              ),  SizedBox(height: 20),
              GFButton(
                fullWidthButton: true,
                text: "Glass görünümlü login",
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                elevation: 2,
                size: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GlassLoginpage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              GFButton(
                fullWidthButton: true,
                text: "FORM KAĞIDI GÖRÜNÜMLÜ LOGİN",
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                elevation: 2,
                size: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormGorunumluLoginPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
