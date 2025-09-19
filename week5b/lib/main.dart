import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(title: Text('Stateless & Stateful Example')),
    body: Center(child: CounterWidget()),
  ),
));

class CounterWidget extends StatefulWidget {
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('$_counter', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
      SizedBox(height: 20),
      ElevatedButton(
        onPressed: () => setState(() => _counter++),
        child: Text('Increment'),
      ),
    ],
  );
}
