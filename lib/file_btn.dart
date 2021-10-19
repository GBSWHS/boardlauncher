import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

class FileButton extends StatelessWidget {
  const FileButton({Key? key}) : super(key: key);

  void onPressed() async {
    await LaunchApp.openApp(androidPackageName: "net.micode.fileexplorer");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: const Text(
        "파일",
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.blue,
    );
  }
}
