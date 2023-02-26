import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSize customAppBar(BuildContext context,String title) {
  return  PreferredSize(
    child:  SafeArea(
      child:  Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade900,
              Colors.deepPurple,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.prompt(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.access_alarm_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
    preferredSize: Size(double.infinity, 60),
  );
}
