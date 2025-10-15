ContainterWidget:
import'package:flutter/material.dart';
voidmain()=>runApp(constMyApp());
class MyApp extends StatelessWidget {
constMyApp({Key?key}):super(key:key);
@override
Widgetbuild(BuildContext context){
return MaterialApp(
home:Scaffold(
appBar:AppBar(
title:constText("Containerexample"),
),
body:Container(
height: 200,
width: double.infinity,
//color:Colors.purple,alignment:
Alignment.center, margin: const
EdgeInsets.all(20), padding: const
EdgeInsets.all(30), decoration:
BoxDecoration(
border:Border.all(color:Colors.black,width:3),
),
child:constText("Hello!iaminsideacontainer!",
style: TextStyle(fontSize: 20)),
),
),
);
}
}