import 'package:flutter/material.dart';

class AdaptiveScreen extends StatelessWidget {
  const AdaptiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: AdaptiveBody(),
    );
  }
}

class AdaptiveBody extends StatelessWidget {
  const AdaptiveBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider.adaptive(
          value: 0.5,
          onChanged: (double newValue) {},
        ),
        SwitchListTile.adaptive(
          value: true,
          onChanged: (bool newValue) {},
          title: Text("Switch List Tile"),
        ),
        Switch.adaptive(
          value: true,
          onChanged: (bool newValue) {},
        ),
        CircularProgressIndicator(),
      ],
    );
  }
}
