import 'package:boardlauncher/meal_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Meal extends StatefulWidget {
  const Meal({Key? key}) : super(key: key);

  @override
  State<Meal> createState() => _Meal();
}

class _Meal extends State<Meal> {
  String _selected = 'breakfast';

  void selMenu(String str) {
    setState(() {
      _selected = str;
    });
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              color: Colors.blue,
              child: Text('아침', style: TextStyle(color: Colors.white)),
              onPressed: () => selMenu('breakfast'),
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('점심', style: TextStyle(color: Colors.white)),
              onPressed: () => selMenu('lunch'),
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('저녁', style: TextStyle(color: Colors.white)),
              onPressed: () => selMenu('dinner'),
            ),
          ],
        ),
        MealProvider(bld: _selected)
      ],
    );
  }
}
