import 'package:flutter/material.dart';
void main() { runApp(MyApp()); } // This is a StatelessWidget
class MyApp extends StatelessWidget
{
@override
Widget build(BuildContext context)
{
return MaterialApp( title: 'custom widget',
home: Scaffold(
appBar: AppBar( title: Text('custom widget'), ),
body: Center(
child: CustomButton(label: 'Click Me', onPressed: () { },), 
),
),
);
}
}
class CustomButton extends StatelessWidget {
final String label;
final VoidCallback onPressed;
final Color color;
CustomButton({
required this.label,
required this.onPressed,
this.color = Colors.blue,
});


@override
Widget build(BuildContext context) {
return ElevatedButton(
style: ElevatedButton.styleFrom(backgroundColor: color),
onPressed: onPressed,
child: Text(label),
);
}
}