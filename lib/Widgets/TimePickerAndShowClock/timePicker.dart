import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({Key? key}) : super(key: key);

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(timeOfDay.toString()),
        MaterialButton(
          onPressed: _showTimePicker,
          child: Text("SAAT GİRİŞİ YAPIN"),
          color: Colors.indigo[400],
        ),
      ],
    );
  }

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        timeOfDay = value!;
      });
    });
  }
}
