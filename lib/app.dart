import 'package:boardlauncher/clock.dart';
import 'package:boardlauncher/file_btn.dart';
import 'package:boardlauncher/meal.dart';
import 'package:boardlauncher/whiteboard_btn.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GBSW Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [Clock()],
            ),
            Row(
              children: [WhiteboardButton(), FileButton()],
            ),
            Row(
              children: [Meal()],
            )
          ],
        ),
      ),
    );
  }
}
