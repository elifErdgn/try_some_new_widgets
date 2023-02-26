import 'package:flutter/material.dart';
import 'package:try_some_new_widgets/Widgets/custom_app_bar.dart';

class JsonDersGibiIcerik extends StatelessWidget {
  const JsonDersGibiIcerik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Json ders içeriği"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Bu ekranda json veri çekme, işlem gibi örnekleri yapıp aynı zamanda konu anlatımlı içerikler bulunmakta. " ),
          ],
        ),
      ),
    );
  }
}



