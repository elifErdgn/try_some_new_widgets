import 'package:flutter/material.dart';

class NodeJsIleLoginRegister extends StatelessWidget {
  const NodeJsIleLoginRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.purple,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.purple,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    child: Center(
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
