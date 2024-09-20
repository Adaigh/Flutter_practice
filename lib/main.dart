import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To-Do Progress Tracker",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do Progress Tracker"),
      ),
      body: Column(
        children: [Progress(), TaskList()],
      ),
    );
  }
}

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Amount of total to-do's completed:"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: "Get gas"),
        TaskItem(label: "Breakfast drinks"),
        TaskItem(label: "Ginger Ale"),
        TaskItem(label: "V8"),
        TaskItem(label: "Trimmer fuel"),
      ],
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;
  TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _value,
          onChanged: (newVal) => setState(() => _value = newVal),
        ),
        Text(widget.label)
      ],
    );
  }
}