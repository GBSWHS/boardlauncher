import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

class WhiteboardButton extends StatelessWidget {
  const WhiteboardButton({Key? key}) : super(key: key);

  void onPressed() async {
    await LaunchApp.openApp(androidPackageName: "com.ist.whiteBoard");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: const Text(
        "화이트보드",
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.blue,
    );
  }
}
