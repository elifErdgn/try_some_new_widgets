import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime date = DateTime(2022, 12, 24);
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.backspace_outlined)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( 
              "${dateTime.day} / ${dateTime.month} / ${dateTime.year}",
              style: TextStyle(fontSize: 32),
            ),
            ElevatedButton(
              onPressed: () async{
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                ).then((value) {
                  setState(() {
                    dateTime = value!;
                  });
               });

               //if 'CANCEL' => null
             //   if(newDate  == null) return;

                //if 'OK' => DateTime
                // setState(() {
                //   dateTime = newDate;
                // });

              },
              child: Text("Select Date"),
            ),
          ],
        ),
      ),
    );
  }
}
