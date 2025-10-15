import'package:flutter/material.dart';
//functiontostartappbuilding
voidmain()=>runApp(constMyApp());
class MyApp extends StatelessWidget {
constMyApp({Key?key}):super(key:key);
//Thiswidget istheroot
//ofyourapplication
@override
Widgetbuild(BuildContext context){
return MaterialApp(
home:Scaffold(
appBar:AppBar(
title: constText(
'InsertImageDemo',
),
),
body: Center(
child:Column(
children: <Widget>[
Image.asset('assets/images/output.gif',
height:200,
scale:2.5// color: Color.fromARGB(255, 15, 147, 59),
opacity:
const
AlwaysStoppedAnimation<double>(0.5)), //Image.asset
Image.asset(
'assets/images/output.jpg', height:
400,
width:400,
),//Image.asset
],//<Widget>[]
),//Column
),//Center
),
);
}
}