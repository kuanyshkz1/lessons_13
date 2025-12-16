import 'package:flutter/material.dart';
import 'package:lesson_13/screens/deteil_screen.dart';
import 'package:lesson_13/screens/home_screen.dart';
import 'package:lesson_13/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomeScreen (),
         "/detail": (context) => DeteilScreen(),
         "/settings": (context) {
  final arguments = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

  final title = arguments['title'] ?? "Заголовок по умолчанию";
  final description = arguments['description'] ?? "Привет Мир!";

  return SettingsScreen(
    title: title,
    description: description,
  );
},

      },
          ); 
  }
}