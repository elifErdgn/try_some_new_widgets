import 'package:flutter/material.dart';

class TextEditDeneme extends StatefulWidget {
  const TextEditDeneme({
    Key? key,
  }) : super(key: key);

  @override
  State<TextEditDeneme> createState() => _TextEditDenemeState();
}

class _TextEditDenemeState extends State<TextEditDeneme> {
  // Create a text controller. Later, use it to retrieve the
  // current value of the TextField
  TextEditingController myController = TextEditingController(text: '4');
  String text = 'metin';

  @override
  void initState() {
    super.initState();
    // Start listening to changes.
    myController.addListener(() {});
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              height: 100,
              color: Colors.blueGrey.shade200,
              child: Center(
                child: Text(
                  text,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                // onChanged: (text){
                //    print('$text');
                // },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ClipRRect(
              child: Stack(
                children: [
                   Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: submit,
                    child: Text("Kaydet"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  void submit(){
    Navigator.of(context).pop(myController.text);
  }

  void _printLatestValue() {
    print('${myController.text}');
  }
}
