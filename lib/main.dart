import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoHomeScreen(),
    );
  }
}

class ToDoHomeScreen extends StatefulWidget {
  const ToDoHomeScreen({
    super.key,
  });

  @override
  State<ToDoHomeScreen> createState() => _ToDoHomeScreenState();
}

class _ToDoHomeScreenState extends State<ToDoHomeScreen> {
  
  var myList = [];

  final _textController = TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo App'),
      ),
      body: Column(
        children: [
        Row(
          children: [
            Expanded(
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter a task",
              ),
             ),
            ),
            ElevatedButton(
             onPressed: () {
              print("Button pressed text: ${_textController.text}");
              setState(() {
              
              myList.add(_textController.text);
             });
             },
             child: Text(" + ")
            ) 
        ],)

      ],),
    );
  }
}
