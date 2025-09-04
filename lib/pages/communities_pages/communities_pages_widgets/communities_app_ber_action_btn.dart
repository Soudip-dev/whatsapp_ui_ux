import 'package:flutter/material.dart';

class CommunitiesAppBerActionBtn extends StatelessWidget {
  const CommunitiesAppBerActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner_sharp)),
        
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      ],
    );
  }
}