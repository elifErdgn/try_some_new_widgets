import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage2 extends StatelessWidget {
  const ProfilePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.brown.shade600,
                  Colors.brown.shade800,
                ],
              ),
            ),
          ),

          Stack(
            children: [
              Padding(padding: EdgeInsets.only(top: 100),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  ),
                ),
              ),
            ],
          ),        ],
      ),
    );
  }
}
