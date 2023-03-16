import 'package:flutter/material.dart';
import 'package:telegram/pages/homePage.dart';
class Telegram extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: "Telegram",
     theme:  ThemeData(
       primarySwatch: Colors.blue,

     ),
     home: HomePage(),
   );
  }


}