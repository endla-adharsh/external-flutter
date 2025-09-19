import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Named Routes Example",
  initialRoute: '/',
  routes: {
    '/': (_) => HomeScreen(),
    '/about': (_) => AboutScreen(),
  },
));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Home")),
    body: Center(
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/about'),
        child: Text('Go to About'),
      ),
    ),
  );
}

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("About")),
    body: Center(
      child: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: Text('Back to Home'),
      ),
    ),
  );
}
