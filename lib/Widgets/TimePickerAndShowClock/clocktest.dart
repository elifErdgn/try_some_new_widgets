import 'package:flutter/material.dart';
import 'package:try_some_new_widgets/Widgets/TimePickerAndShowClock/Clock.dart';
import 'package:try_some_new_widgets/Widgets/TimePickerAndShowClock/timeInHourAndMinute.dart';
import 'package:try_some_new_widgets/Widgets/TimePickerAndShowClock/timePicker.dart';

class ClockTest extends StatelessWidget {
  const ClockTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // ARTI ICONU
          buildAddButton(),
        ],
      ),
      body: Body(),
    );
  }

  Padding buildAddButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFF957DAD),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Saat girişi ",
              style: TextStyle(fontSize: 25),
            ),
            TimeInHourAndMinute(),
            Clock(),
            TimePicker(),
          ],
        ),
      ),
    );
  }
}
