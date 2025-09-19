import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: AnimBox(), debugShowCheckedModeBanner:
false));


class AnimBox extends StatefulWidget {
const AnimBox({super.key});
@override
State<AnimBox> createState() => _AnimBoxState();
}


class _AnimBoxState extends State<AnimBox> {
bool big = false;
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text("AnimatedContainer")),
body: Center(
child: GestureDetector(
onTap: () => setState(() => big = !big),
child: AnimatedContainer(
duration: const Duration(seconds: 1),
curve: Curves.easeInOut,
width: big ? 200 : 100,
height: big ? 200 : 100,
padding: EdgeInsets.all(big ? 30 : 10),
decoration: BoxDecoration(
color: big ? Colors.blue : Colors.red,
borderRadius: BorderRadius.circular(big ? 30 : 0),
),
),
),
),
);
}
}