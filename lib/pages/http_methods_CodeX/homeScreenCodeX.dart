import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:try_some_new_widgets/pages/http_methods_CodeX/base_client.dart';
import 'package:try_some_new_widgets/pages/http_methods_CodeX/userModel.dart';

class HomeScreenCodeX extends StatefulWidget {
  const HomeScreenCodeX({Key? key}) : super(key: key);

  @override
  State<HomeScreenCodeX> createState() => _HomeScreenCodeXState();
}

class _HomeScreenCodeXState extends State<HomeScreenCodeX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            buildFunctionButton(
              "GET",
              "Fetch Users",
              Colors.green.shade700,
              () async {
                var response =
                    await BaseClient().get('/users').catchError((err) {});
                if (response == null) return;
                debugPrint("veri çekimi başarılı");
                var users = userFromJson(response);
                debugPrint("veri sayısı " + users.length.toString());
              },
            ),
            buildFunctionButton(
              "POST",
              "Add Users",
              Colors.blue.shade700,
              () async {
                var user = User(
                  name: "Bilal",
                  lastName: "Jonathon",
                  age: 22,
                  color: "0xFF258865",
                );
                var response = await BaseClient()
                    .post('/users', user)
                    .catchError((err) {});
                if (response == null) return;
                debugPrint("veri ekleme başarılı");
              },
            ),
            buildFunctionButton(
              "PUT",
              "Edit Users",
              Colors.orange,
              () async{
                var id = 2;
                var user = User(
                  name: "Bilal",
                  lastName: "Jonathon",
                  age: 22,
                  color: "0xFF258865",
                );
                var response = await BaseClient()
                    .put('/users/$id', user)
                    .catchError((err) {});
                if (response == null) return;
                debugPrint("veri güncelleme başarılı");
              },
            ),
            buildFunctionButton(
              "DEL",
              "Delete Users",
              Colors.pink.shade700,
              () async {
                var id = 3;
                var response =
                    await BaseClient().delete('/users/$id').catchError((err) {});
                if (response == null) return;
                debugPrint("silme başarılı");
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildFunctionButton(
    String title, String desc, Color titleColor, VoidCallback press) {
  return GestureDetector(
    onTap: press,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: titleColor.withOpacity(.5),
            offset: Offset(0, 3),
            spreadRadius: 3,
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.kanit(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
          Text(
            desc,
            style: GoogleFonts.prompt(
              fontSize: 20,
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}
