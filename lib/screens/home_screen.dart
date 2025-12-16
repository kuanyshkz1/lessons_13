import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen ({super.key});


@override 
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(),
    body: SafeArea(
      child: Center(
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/detail",
          );
          },
        child: Text("Детали"),),
        TextButton(
          child: Text("Настройки"),
          onPressed: () {
            Navigator.pushNamed(context, "/settings", 
            arguments: {
            "title": "Привет из MainScreen!",
            "discription": "Привет Мир!",
            },
            );
          },
        ),
      ],
      ),
    ),
    ),
  );
 }
}