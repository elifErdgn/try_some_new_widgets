import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showMaterialBanner(
                    MaterialBanner(
                      padding: EdgeInsets.all(20),
                      leading: Icon(Icons.notification_add),
                      elevation: 5,
                      backgroundColor: Colors.white12,
                      content: Text(""),
                      actions: [
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: Text("Dismiss"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text("OPEN"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 400,
                        child: Center(
                          child: ElevatedButton(
                            child: Text("Close"),
                            onPressed: (){
                              Navigator.pop(context); 
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text("OPEN"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
