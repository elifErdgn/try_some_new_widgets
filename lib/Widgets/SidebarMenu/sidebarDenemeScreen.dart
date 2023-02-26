import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../drawers/advanced_paketi.dart';
import '../drawers/sidebarXpaket.dart';
import '../drawers/sliderDrawerPaket.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            ButtonWidget(
                title: "SideBarX Paket",
                borderColor: Colors.orange,
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SidebarXExampleApp()))),
            ButtonWidget(
                title: "Kendi Tasarımımız",
                borderColor: Colors.green,
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DrawerDenemeScreen()))),
            ButtonWidget(
                title: "Advanced Paket",
                borderColor: Colors.red,
                press: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AdvancedPaket()))),
            ButtonWidget(
                title: "Slider Drawer Paketi",
                borderColor: Colors.red,
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SliderDrawerPaketi()))),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      required this.title,
      required this.borderColor,
      required this.press})
      : super(key: key);

  final String title;
  final Color borderColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: borderColor,
            width: 3,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: borderColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

/// Kendi tasarladığımız drawer - en basiti

class DrawerDenemeScreen extends StatelessWidget {
  const DrawerDenemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Deneme1(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.indigo.shade600,
                  Colors.indigo.shade900,
                ],
                end: Alignment.bottomLeft,
                begin: Alignment.topRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Deneme1 extends StatelessWidget {
  const Deneme1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo[900],
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/mushu.jpg",
                ),
              ),
            ),
            accountName: Text("Ad Soyad"),
            accountEmail: Text(
              "mailadresi@gmail.com",
              style: TextStyle(color: Colors.red),
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.all(12),
              child: Text("BAŞLIK "),
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
