import 'package:flutter/material.dart';

class ChatAppBerActionBtn extends StatelessWidget {
  const ChatAppBerActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner_sharp)),
        IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      ],
    );
  }
}