import 'package:flutter/material.dart';
void main() => runApp(
  const MaterialApp(
    home: AnimBtn(),
     debugShowCheckedModeBanner:false
      )
);

class AnimBtn extends StatefulWidget {
  const AnimBtn({super.key});
  @override
  State<AnimBtn> createState() => _AnimBtnState();
}
class _AnimBtnState extends State<AnimBtn> {
  bool right = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedAlign(
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        alignment: right ? Alignment.centerRight : Alignment.centerLeft,
        child: ElevatedButton(
          onPressed: () => setState(() => right = !right),
        child: const Text("Slide Me "),
  ),
),
);
}
}