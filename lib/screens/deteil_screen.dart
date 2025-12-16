import 'package:flutter/material.dart';

class DeteilScreen extends StatelessWidget{
  const DeteilScreen ({super.key});


@override 
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon: Icon(Icons.ac_unit)),
    ),
    body: SafeArea(
      child: Center(
      child: 
        TextButton(
        child: Text("Настройки"),
        onPressed: () {
          Navigator.pushNamed(context, "/settings", 
            arguments: {
            "title": "Привет из MainScreen!",
            "discription": "sdsdcascds",
            },
            );
        },
        ),
      ),
    ),
    );
 }
}