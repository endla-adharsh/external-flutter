RowWidget
import 'package:flutter/material.dart';
void main() { runApp(MyApp()); }
classMyAppextendsStatelessWidget{
@override
Widgetbuild(BuildContextcontext){
return MaterialApp(
home:MyHomePage()
);
}
}
classMyHomePageextendsStatefulWidget{ @override
_MyHomePageStatecreateState()=>_MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
@override
Widgetbuild(BuildContextcontext){
return Scaffold(
appBar:AppBar(
title:Text("FlutterRowExample"),
),
body:Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children:<Widget>[
Container(
margin: EdgeInsets.all(12.0),
padding:EdgeInsets.all(8.0),
decoration:BoxDecoration(
borderRadius:BorderRadius.circular(8),
color:Colors.green
),
child:
Text("React.js",style:TextStyle(color:Colors.yellowAccent,fontSize:25),),
),
Container(
margin:EdgeInsets.all(15.0),
padding: EdgeInsets.all(8.0),
decoration:BoxDecoration(
borderRadius:BorderRadius.circular(8),
color:Colors.green
),
TextStyle(color:Colors.yellowAccent,fontSize:25),),
),
Container(
margin: EdgeInsets.all(12.0),
padding:EdgeInsets.all(8.0),
decoration:BoxDecoration(
borderRadius:BorderRadius.circular(8),
color:Colors.green
),
child: Text("Flutter",style:
TextStyle(color:Colors.yellowAccent,fontSize:25),),
)
]
),
);
}
}