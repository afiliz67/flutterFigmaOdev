import 'package:flutter/material.dart';

final textEdition = TextEditingController();
String text;
class NotePage extends StatefulWidget {
  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              TextField(
                controller: textEdition,
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                autofocus: true,
                minLines: 1,
                maxLines: MediaQuery.of(context).size.height ~/ 10,
                maxLengthEnforced: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  labelText: 'Notes',
                ),
              ),
              GestureDetector(
                child: Container(
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Save",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              (MediaQuery.of(context).size.height * 0.05) / 2,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  setState(
                    () {
                      text=textEdition.text;
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
