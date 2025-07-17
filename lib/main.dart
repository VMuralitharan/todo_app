import 'package:flutter/material.dart';

void main() {
  runApp(Mainapp());
}

class Mainapp extends StatefulWidget {
  @override
  State<Mainapp> createState() => _MainappState();
}

class _MainappState extends State<Mainapp> {
  String displayText = "No Data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ToDo", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter a task"),
                ),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {
                setState(() {
                  displayText = "Button Pressed!";
                });
              },
              child: Text("Press here"),
            ),
            Text(displayText),
          ],
        ),
      ),
    );
  }
}
