import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: HomeScreen()));

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return  Scaffold(
        appBar: AppBar(title: const Text("Home")),
        body: Center(
          child: ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NewScreen()),
            ),
            child: const Text("Go to New Screen"),
          ),
        ),
      );
}
}

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text("New Screen")),
        body: const Center(
          child: Text("This is New Screen", style: TextStyle(fontSize: 24)),
        ),
      );
}