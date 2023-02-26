import 'package:flutter/material.dart';

class ClipPathYapisi extends StatelessWidget {
  const ClipPathYapisi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ClipPath(
              clipper: UstYamukKart(),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.symmetric(horizontal: 0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepPurple.shade700,
                      Colors.deepPurple.shade400,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.6,
                child: Center(
                  child: Text("Clip Path"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, h); //sol üstten başlayarak sol alt bitişe olan kısım

    path.quadraticBezierTo(
      w * 0.5,
      h - 100,
      w,
      h,
    );

    path.lineTo(w, 0); //sağ alttan başlayarak sağ üst bitişe olan kısım
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomClipPath2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(0, h); //sol üstten başlayarak sol alt bitişe olan kısım

    path.quadraticBezierTo(
      w * 0.39,
      h * 0.98,
      w * 0.50,
      h * 0.77,
    );
    path.quadraticBezierTo(
      w * 0.72,
      h * 0.50,
      w,
      h,
    );

    path.lineTo(w, 0); //sağ alttan başlayarak sağ üst bitişe olan kısım
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h / 2); //sol üstten başlayarak sol alt bitişe olan kısım

    path.cubicTo(w / 4, 3 * (h / 2), 3 * (w / 4), h / 2, w, h * 0.9);

    path.lineTo(w, 0); //sağ alttan başlayarak sağ üst bitişe olan kısım
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class UstYamukKart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 50.0;
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.moveTo(0, h * 0.33);
    path.lineTo(0, h - roundnessFactor);
    path.quadraticBezierTo(0, h, roundnessFactor, h);

    path.lineTo(w - roundnessFactor, h);
    path.quadraticBezierTo(w, h, w, h - roundnessFactor);
    path.lineTo(w, roundnessFactor * 2);
    path.quadraticBezierTo(w, 0, w - roundnessFactor * 3, roundnessFactor * 2);
    path.lineTo(roundnessFactor, h * 0.33 + 10);
    path.quadraticBezierTo(
        0, h * 0.33 + roundnessFactor, 0, h * 0.33 + roundnessFactor * 2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
