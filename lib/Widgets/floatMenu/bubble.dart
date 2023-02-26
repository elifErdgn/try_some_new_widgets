import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

class BubbleMenu extends StatelessWidget {
  const BubbleMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: BubblePaket(title: 'Floating Button'));
  }
}

class BubblePaket extends StatefulWidget {
  const BubblePaket({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<BubblePaket> createState() => _BubblePaketState();
}

class _BubblePaketState extends State<BubblePaket>
    with TickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 260));

    final curvedAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.slowMiddle);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade200,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade200,
        elevation: 0,
        title: Text(widget.title),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "Settings",
            iconColor: Colors.white,
            bubbleColor: Colors.orange,
            icon: Icons.settings,
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController.reverse();
            },
          ),
          Bubble(
            title: "Settings",
            iconColor: Colors.white,
            bubbleColor: Colors.blue,
            icon: Icons.settings,
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController.reverse();
            },
          ),
          Bubble(
            title: "Settings",
            iconColor: Colors.white,
            bubbleColor: Colors.pink,
            icon: Icons.settings,
            titleStyle: TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              _animationController.reverse();
            },
          ),
          Bubble(
            title: "Settings",
            iconColor: Colors.black,
            bubbleColor: Colors.yellow,
            icon: Icons.settings,
            titleStyle: TextStyle(fontSize: 16, color: Colors.black),
            onPress: () {
              _animationController.reverse();
            },
          ),
        ],
        animation: _animation,
        onPress: () => _animationController.isCompleted
            ? _animationController.reverse()
            : _animationController.forward(),
        iconColor: Colors.white,

        iconData: Icons.menu,
        backGroundColor: Colors.lightGreen.shade400,
      ),
    );
  }
}
