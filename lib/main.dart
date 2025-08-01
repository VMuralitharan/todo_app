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
  List<String> taskList = [];
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ToDo List App", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Enter a task"),
                      ),
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
                      taskList.add(textController.text);
                      textController.clear();
                    });
                  },
                  child: Text(
                    "Add Task",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),

            Flexible(
              child: ListView.builder(
                itemCount: taskList.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(taskList[index]),
                        ),
                      ),

                      MaterialButton(
                        child: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            taskList.removeAt(index);
                          });
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
