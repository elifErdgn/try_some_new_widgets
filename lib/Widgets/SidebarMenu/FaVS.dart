import 'package:flutter/material.dart';
import 'package:try_some_new_widgets/Widgets/SidebarMenu/SidebarMenu.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(),
      body: Center(
        child:Text(
          "Favs"
        ),
      ),
    );
  }
}
