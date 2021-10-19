import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock extends StatelessWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Column(children: [
          Text(
            DateFormat('yyyy년 MM월 dd일').format(DateTime.now()),
            style: const TextStyle(fontSize: 18),
          ),
          Row(
            children: [
              Text(
                DateFormat('a hh:mm').format(DateTime.now()),
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat(' ss').format(DateTime.now()),
                style: const TextStyle(fontSize: 15, height: 2),
              ),
            ],
          )
        ]);
      },
    );
  }
}
