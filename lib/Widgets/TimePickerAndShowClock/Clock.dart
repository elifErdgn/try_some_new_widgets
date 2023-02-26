import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:try_some_new_widgets/Widgets/TimePickerAndShowClock/clock_painter.dart';



/// SAAT WIDGET EKRANA YERLEŞTİRİLMESİ
/// DARK VE AYDINLIK TEMA AYARLAMA ICONLARI
class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFEEA579),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Colors.white.withOpacity(0.2),
                    blurRadius: 65,
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(
                  painter: ClockPainter(_dateTime),
                ),
              ),
            ),
          ),
        ),
        /**
         *   Positioned(
            top: 50,
            right: 0,
            left: 0,
            child: Consumer<MyThemeModel>(
            builder: (context, theme, child) => InkWell(
            onTap: () => theme.changeTheme(),
            child: SvgPicture.asset(
            theme.isLightTheme
            ? "assets/icons/sun (1).svg"
            : "assets/icons/moon (1).svg",
            width: 35,
            height: 35,
            color: Colors.green,
            ),
            ),
            ),
            ),
         * */
      ],
    );
  }
}
