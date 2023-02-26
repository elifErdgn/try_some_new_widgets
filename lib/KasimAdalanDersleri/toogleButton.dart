import 'package:flutter/material.dart';

class ToogleButt extends StatefulWidget {
  const ToogleButt({Key? key}) : super(key: key);

  @override
  State<ToogleButt> createState() => _ToogleButtState();
}

class _ToogleButtState extends State<ToogleButt> {
  var toggleDurumlar = [false, true, false];
  int secilenToggleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ToggleButtons(
            children: [
              Icon(Icons.looks_one, color: Colors.red),
              Icon(Icons.looks_two, color: Colors.blue),
              Icon(Icons.looks_3, color: Colors.yellow),
            ],
            isSelected: toggleDurumlar,
            onPressed: (int secilenIndeks){
              secilenToggleIndex = secilenIndeks;
              print("${secilenIndeks+1}");

              setState(() {
                toggleDurumlar[secilenIndeks] = !toggleDurumlar[secilenIndeks]; 
              });
              },

          ),
        ],
      ),
    );
  }
}
