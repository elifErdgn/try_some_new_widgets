import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageInsta extends StatelessWidget {
  const HomePageInsta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Instagram",
                  style: GoogleFonts.bilboSwashCaps(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('IGTV');
                      },
                      icon: Icon(
                        Icons.live_tv,
                      ),
                    ),
                    // SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        print('dm');
                      },
                      icon: Icon(
                        Icons.send,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SizedBox(width: 10);
                }
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 2),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Text(""),
                    ),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
