import 'package:flutter/material.dart';
import 'package:try_some_new_widgets/Widgets/SidebarMenu/FaVS.dart';


class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Elifnur Erdoğan',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              'bişiler@gmail.com',
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/back.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/minimal2.jpg",
                    ))),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('favorites'),
            onTap: () => Null,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('profle'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const FavoritesPage())),
            trailing: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              width: 25,
              height: 25,
              child: Center(
                child: Text(
                  "2",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('kategori 3'),
            onTap: () => Null,
          ),
          Divider(
            height: 30,
            color: Colors.deepOrange,
            thickness: 2.0,
            indent: 10.0,
            endIndent: 10.0,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('kategori 4'),
            onTap: () => Null,
            trailing: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              width: 25,
              height: 25,
              child: Center(
                child: Text(
                  "8",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('kategori 4'),
            onTap: () => Null,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('kategori 4'),
            onTap: () => Null,
          ),
        ],
      ),
    );
  }
}